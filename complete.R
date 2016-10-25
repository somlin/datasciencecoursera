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
  return(complete_data)
}