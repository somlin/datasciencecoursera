pollutantmean <- function(directory, pollutant, id = 1:332){
  means <-c()
  #directory <- normalizePath(directory, winslash = "\\")
  for (i in id){
    i <- sprintf("%03d", i)
    f <- paste(i,".csv", sep="")
    filename = file.path(directory,f)
    data <- read.csv(filename)
    m <- mean(data[[pollutant]], na.rm=TRUE)
    means <- append(means,m)
  }
  pollutant_mean <- sum(means,na.rm=T)/length(means)
  return(pollutant_mean)
  
}

complete <- function(directory,id=1:332){
  ids <- c()
  nobs <- c()
  for (i in id){
    j <- sprintf("%03d", i)
    f <- paste(j,".csv", sep="")
    filename = file.path(directory,f)
    data <- read.csv(filename)
    count <- sum(complete.cases(data))
    ids <- append(ids,i)
    nobs <- append(nobs,count)
  }
  complete_data <- data.frame("ids"=ids,"nobs"=nobs)
  print(complete_data)
}