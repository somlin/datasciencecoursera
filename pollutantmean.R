pollutantmean <- function(directory, pollutant, id = 1:332){
  filenames <- character()
  for (i in id){
    i <- sprintf("%03d", i)
    f <- paste(i,".csv", sep="")
    filename = file.path(directory,f)
    filenames <- append(filenames,filename)
  }
  d <- lapply(filenames, read.csv)
  data <- numeric()
  i <- 1
  while(i<=length(d)){
    data <- append(data,d[[i]][[pollutant]])
    i <- i+1
  }
  pollutant_mean <- mean(data,na.rm=TRUE)
  return(pollutant_mean)
  
}