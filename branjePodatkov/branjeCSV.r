branje.csv <- function(csvpath, fileEncoding, separator){
  return(read.csv(file = csvpath, fileEncoding = fileEncoding, sep = separator, dec = ",", row.names = 1, blank.lines.skip=TRUE))
}