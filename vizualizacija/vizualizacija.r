# Uvozimo funkcijo za pobiranje in uvoz zemljevida.
source("lib/uvozi.zemljevid.r")

# Uvozimo zemljevid.

cat("Uvažam zemljevid...\n")
svet <- uvozi.zemljevid("http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_admin_0_countries.zip", 
                                                "svet", "ne_110m_admin_0_countries.shp", mapa = "zemljevid", 
                                                encoding = "Windows-1250") 

imena.drzav <- c("Germany", "Russia", "United Kingdom", "United States")
drzave <- match(svet$name, imena.drzav)
m <- match(imena.drzav, svet$name)
barve <- apply(apply(a, 1, function(x) x/max(x)), 1, function(y) rgb(y[1], 0, y[2]))
#plot(svet, col=barve[drzave], main = 'Uvoz in izvoz elektrike 2012',legend("bottomleft", legend = c("Izvoz", "Uvoz"), fill = c("red", "blue")))
koordinate <- coordinates(svet[m,])
koordinate[2,1] <- koordinate[2,1] - 40

#Zemeljski plin 
svet$gas_exports <- (m+k+r+u+v)[1,drzave]
pdf("slike/Izvoz_zemeljskega_plina_2008_2012.pdf")
print(spplot(svet, "gas_exports", ylim = c(0, 90),xlim=c(-130,80),
             col.regions = topo.colors(100), main = "Izvoz zemeljskega plina 2008-2012",
             sp.layout = list(list("sp.text", koordinate, c("GER", "RUS", "UK", "USA")))))
dev.off()

svet$gas_imports <- (m+k+r+u+v)[2,drzave]
pdf("slike/Uvoz_zemeljskega_plina_2008_2012.pdf")
print(spplot(svet, "gas_imports", ylim = c(0, 90),xlim=c(-130,80),
             col.regions = terrain.colors(100), main = "Uvoz zemeljskega plina 2008-2012",
             sp.layout = list(list("sp.text", koordinate, c("GER", "RUS", "UK", "USA")))))
dev.off()
# Elektrika
svet$electricity_exports <- (n+l+t+s+a)[1,drzave]
pdf("slike/Izvoz_elektrike_2008_2012.pdf")
print(spplot(svet, "electricity_exports", ylim = c(0, 90),xlim=c(-130,80),
             col.regions = topo.colors(100), main = "Izvoz elektrike 2008-2012",
             sp.layout = list(list("sp.text", koordinate, c("GER", "RUS", "UK", "USA")))))
dev.off()

svet$electricity_imports <- (n+l+t+s+a)[2,drzave]
pdf("slike/Uvoz_elektrike_2008_2012.pdf")
print(spplot(svet, "electricity_imports", ylim = c(0, 90),xlim=c(-130,80),
             col.regions = terrain.colors(100), main = "Uvoz elektrike 2008-2012",
             sp.layout = list(list("sp.text", koordinate, c("GER", "RUS", "UK", "USA")))))
dev.off()
# Refinerirana nafta
svet$refined_petroleum_exports <- (o+j+e+d+b)[1,drzave]
pdf("slike/Izvoz_refinerirane_nafte_2008_2012.pdf")
print(spplot(svet, "refined_petroleum_exports", ylim = c(0, 90),xlim=c(-130,80),
             col.regions = topo.colors(100), main = "Izvoz refinerirane nafte 2008-2012",
             sp.layout = list(list("sp.text", koordinate, c("GER", "RUS", "UK", "USA")))))
dev.off()

svet$refined_petroleum_imports <- (o+j+e+d+b)[2,drzave]
pdf("slike/Uvoz_refinerirane_nafte_2008_2012.pdf")
print(spplot(svet, "refined_petroleum_imports", ylim = c(0, 90),xlim=c(-130,80),
             col.regions = terrain.colors(100), main = "Uvoz refinerirane nafte 2008-2012",
             sp.layout = list(list("sp.text", koordinate, c("GER", "RUS", "UK", "USA")))))

dev.off()

# # Funkcija, ki podatke preuredi glede na vrstni red v zemljevidu
# preuredi <- function(podatki, zemljevid) {
#   nove.obcine <- c()
#   manjkajo <- ! nove.obcine %in% rownames(podatki)
#   M <- as.data.frame(matrix(nrow=sum(manjkajo), ncol=length(podatki)))
#   names(M) <- names(podatki)
#   row.names(M) <- nove.obcine[manjkajo]
#   podatki <- rbind(podatki, M)
#   
#   out <- data.frame(podatki[order(rownames(podatki)), ])[rank(levels(zemljevid$OB_UIME)[rank(zemljevid$OB_UIME)]), ]
#   if (ncol(podatki) == 1) {
#     out <- data.frame(out)
#     names(out) <- names(podatki)
#     rownames(out) <- rownames(podatki)
#   }
#   return(out)
# }
# 
# # Preuredimo podatke, da jih bomo lahko izrisali na zemljevid.
# druzine <- preuredi(druzine, obcine)
# 
# # Izračunamo povprečno velikost družine.
# druzine$povprecje <- apply(druzine[1:4], 1, function(x) sum(x*(1:4))/sum(x))
# min.povprecje <- min(druzine$povprecje, na.rm=TRUE)
# max.povprecje <- max(druzine$povprecje, na.rm=TRUE)
# 
# # Narišimo zemljevid v PDF.
# cat("Rišem zemljevid...\n")
# pdf("slike/povprecna_druzina.pdf", width=6, height=4)
# 
# n = 100
# barve = topo.colors(n)[1+(n-1)*(druzine$povprecje-min.povprecje)/(max.povprecje-min.povprecje)]
# plot(obcine, col = barve)
# 
# dev.off()

