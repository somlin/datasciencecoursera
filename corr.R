corr <- function(directory, threshold=0){
  complete_data <- complete(directory)
  ids <- complete_data$ids[complete_data$nobs>threshold]
  cr <- vector("numeric")
  if(length(ids) == 0){
    #print("No data to calculate")
  } else{
    for (i in ids){
      i <- sprintf("%03d", i)
      f <- paste(i,".csv", sep="")
      filename = file.path(directory,f)
      #print(filename)
      data <- read.csv(filename)
      result <- cor(data$sulfate,data$nitrate,use="pairwise.complete.obs", method="pearson")
      cr <- append(cr,result)
    }
  }
  return(cr)
  
}