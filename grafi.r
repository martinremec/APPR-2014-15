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
barplot(o, beside=T, main='Refined Petroleum imprts & exports in 2008', xlab ='Country', ylab ='Refined_Petroleum_export_Thousand_Barrels_Per_Day', col =c('purple','deeppink'), legend=c('Refined Petroleum Exports','Refined Petroleum Imports'), xlim = c(0, 15))
dev.off()
