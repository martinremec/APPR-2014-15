m <- apply(energy_stats_2008, 1, function(x) x[1:2])
pdf("slike/Natutral_gas_imprts_exports_2008.pdf")
barplot(m, beside=TRUE, main ='Natural gas import & export in 2008', xlab ='Country', ylab = 'Natural gas in BCF',col = c('darkblue','red'), legend =c('Natural Gas Exports','Natural Gas Imports'),xlim = c(0, 15))
dev.off()

n <- apply(energy_stats_2008, 1, function(x) x[3:4])
pdf('slike/Electricity_imports_exports_2008.pdf')
barplot(n, beside=T, main = 'Electricity imports & exports in 2008', xlab = 'Country', ylab = "Electricity in Billion Kilowatthours", col = c('green','yellow'), legend=c('Electricity Exports','Electricity Imports'),xlim = c(0, 15), args.legend = c(x="top"))
dev.off()

o <- apply(energy_stats_2008, 1, function(x) x[5:6])
pdf('slike/Refined_Petrolium_imports_exports_2008.pdf')
barplot(o, beside=T, main='Refined Petroleum imprts & exports in 2008', xlab ='Country', ylab ='Refined_Petroleum_export_Thousand_Barrels_Per_Day', col =c('purple','deeppink'), legend=c('Refined Petroleum Exports','Refined Petroleum Imports'), xlim = c(0, 15), args.legend = c(x="top"))
dev.off()

k <- apply(energy_stats_2009,1,function(x) x[1:2])
pdf("slike/Natutral_gas_imprts_exports_2009.pdf")
barplot(k, beside=TRUE, main ='Natural gas import & export in 2009', xlab ='Country', ylab = 'Natural gas in BCF',col = c('darkblue','red'), legend =c('Natural Gas Exports','Natural Gas Imports'),xlim = c(0, 15))
dev.off()

l <- apply(energy_stats_2009, 1, function(x) x[3:4])
pdf('slike/Electricity_imports_exports_2009.pdf')
barplot(n, beside=T, main = 'Electricity imports & exports in 2009', xlab = 'Country', ylab = "Electricity in Billion Kilowatthours", col = c('green','yellow'), legend=c('Electricity Exports','Electricity Imports'),xlim = c(0, 15), args.legend = c(x="top"))
dev.off()

j <- apply(energy_stats_2009, 1, function(x) x[5:6])
pdf('slike/Refined_Petrolium_imports_exports_2009.pdf')
barplot(o, beside=T, main='Refined Petroleum imprts & exports in 2009', xlab ='Country', ylab ='Refined_Petroleum_export_Thousand_Barrels_Per_Day', col =c('purple','deeppink'), legend=c('Refined Petroleum Exports','Refined Petroleum Imports'), xlim = c(0, 15), args.legend = c(x="top"))
dev.off()

r <- apply(energy_stats_2010,1,function(x) x[1:2])
pdf("slike/Natutral_gas_imprts_exports_2010.pdf")
barplot(m, beside=TRUE, main ='Natural gas import & export in 2010', xlab ='Country', ylab = 'Natural gas in BCF',col = c('darkblue','red'), legend =c('Natural Gas Exports','Natural Gas Imports'),xlim = c(0, 15))
dev.off()

t <- apply(energy_stats_2010, 1, function(x) x[3:4])
pdf('slike/Electricity_imports_exports_2010.pdf')
barplot(n, beside=T, main = 'Electricity imports & exports in 2010', xlab = 'Country', ylab = "Electricity in Billion Kilowatthours", col = c('green','yellow'), legend=c('Electricity Exports','Electricity Imports'),xlim = c(0, 15), args.legend = c(x="top"))
dev.off()

e <- apply(energy_stats_2010, 1, function(x) x[5:6])
pdf('slike/Refined_Petrolium_imports_exports_2010.pdf')
barplot(o, beside=T, main='Refined Petroleum imprts & exports in 2010', xlab ='Country', ylab ='Refined_Petroleum_export_Thousand_Barrels_Per_Day', col =c('purple','deeppink'), legend=c('Refined Petroleum Exports','Refined Petroleum Imports'), xlim = c(0, 15), args.legend = c(x="top"))
dev.off()

u <- apply(energy_stats_2011,1,function(x) x[1:2])
pdf("slike/Natutral_gas_imprts_exports_2011.pdf")
barplot(m, beside=TRUE, main ='Natural gas import & export in 2011', xlab ='Country', ylab = 'Natural gas in BCF',col = c('darkblue','red'), legend =c('Natural Gas Exports','Natural Gas Imports'),xlim = c(0, 15))
dev.off()

s <- apply(energy_stats_2011, 1, function(x) x[3:4])
pdf('slike/Electricity_imports_exports_2011.pdf')
barplot(n, beside=T, main = 'Electricity imports & exports in 2011', xlab = 'Country', ylab = "Electricity in Billion Kilowatthours", col = c('green','yellow'), legend=c('Electricity Exports','Electricity Imports'),xlim = c(0, 15), args.legend = c(x="top"))
dev.off()

d <- apply(energy_stats_2011, 1, function(x) x[5:6])
pdf('slike/Refined_Petrolium_imports_exports_2011.pdf')
barplot(o, beside=T, main='Refined Petroleum imprts & exports in 2011', xlab ='Country', ylab ='Refined_Petroleum_export_Thousand_Barrels_Per_Day', col =c('purple','deeppink'), legend=c('Refined Petroleum Exports','Refined Petroleum Imports'), xlim = c(0, 15), args.legend = c(x="top"))
dev.off()

v <- apply(energy_stats_2012,1,function(x) x[1:2])
pdf("slike/Natutral_gas_imprts_exports_2012.pdf")
barplot(m, beside=TRUE, main ='Natural gas import & export in 2012', xlab ='Country', ylab = 'Natural gas in BCF',col = c('darkblue','red'), legend =c('Natural Gas Exports','Natural Gas Imports'),xlim = c(0, 15))
dev.off()

a <- apply(energy_stats_2012, 1, function(x) x[3:4])
pdf('slike/Electricity_imports_exports_2012.pdf')
barplot(n, beside=T, main = 'Electricity imports & exports in 2012', xlab = 'Country', ylab = "Electricity in Billion Kilowatthours", col = c('green','yellow'), legend=c('Electricity Exports','Electricity Imports'),xlim = c(0, 15), args.legend = c(x="top"))
dev.off()

b <- apply(energy_stats_2012, 1, function(x) x[5:6])
pdf('slike/Refined_Petrolium_imports_exports_2012.pdf')
barplot(o, beside=T, main='Refined Petroleum imprts & exports in 2012', xlab ='Country', ylab ='Refined_Petroleum_export_Thousand_Barrels_Per_Day', col =c('purple','deeppink'), legend=c('Refined Petroleum Exports','Refined Petroleum Imports'), xlim = c(0, 15), args.legend = c(x="top"))
dev.off()