

source("branjePodatkov/branjeCSV.r")


energy_stats_2008 <- branje.csv("CSVs/2008.csv", "Windows-1250", ";")
energy_stats_2009 <- branje.csv("CSVs/2009.csv", "Windows-1250", ";")
energy_stats_2010 <- branje.csv("CSVs/2010.csv", "Windows-1250", ";")
energy_stats_2011 <- branje.csv("CSVs/2011.csv", "Windows-1250", ";")
energy_stats_2012 <- branje.csv("CSVs/2012.csv", "Windows-1250", ";")
total_energy_production_1992_2012 <- branje.csv("CSVs/Total_Primary_Energy_Production_(Million_Btu).csv", "Windows-1250", ";")

