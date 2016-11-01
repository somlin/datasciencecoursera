rankhospital <- function(state,outcome, num = "best"){
  #Reading outcome data
  filename <- file.path("ProgAssignment3-data","outcome-of-care-measures.csv")
  outcome.data <- read.csv(filename,colClasses = "character")
  
  #Check valid data
  valid.outcomes <- c("heart attack"=11, "heart failure"=17, "pneumonia"=23)
  if(sum(outcome.data$State == state,na.rm=TRUE) == 0){
    stop("Invalid State")
  }
  if(outcome %in% names(valid.outcomes) == FALSE){
    stop("Invalid outcome")
  }
  # Get data for state where outcome fiedl is not NA
  cl <- valid.outcomes[[outcome]]
  data <- subset(outcome.data,State == state)
  bad <- is.na(as.numeric(data[,cl]))
  data <- data[!bad,]
  
  #Sort the data 1st by outcome and then by hospital names
  sorted.data <- data[order(as.numeric(data[,cl]), data[,2]),]
  
  #Set the rw as per input num and validate rw
  counts <-nrow(sorted.data)
  rw <- as.integer(num)
  if(num == "best"){
      rw <- 1
  }else if(num == "worst"){
      rw <- counts
  }
  if(rw >counts){
      return(NA)
  }
  #return result
  result <- sorted.data[rw,2]
  return(result)
}