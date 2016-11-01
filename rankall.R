rankall <- function(outcome, num = "best"){
  #Reading outcome data
  filename <- file.path("ProgAssignment3-data","outcome-of-care-measures.csv")
  outcome.data <- read.csv(filename,colClasses = "character")
  
  #Check valid data
  valid.outcomes <- c("heart attack"=11, "heart failure"=17, "pneumonia"=23)
  if(outcome %in% names(valid.outcomes) == FALSE){
    stop("Invalid outcome")
  }
  # Get data for state where outcome fiedl is not NA
  cl <- valid.outcomes[[outcome]]
  bad <- is.na(as.numeric(outcome.data[,cl]))
  data <- outcome.data[!bad,]
  
  #Sort the data 1st by outcome and then by hospital names
  sorted.data <- data[order(data$State,as.numeric(data[,cl]), data[,2]),]
  final.data <- split(sorted.data, sorted.data$State)

  
  #Set the rw as per input num and validate rw
  result <- data.frame("hospital"=character(0),"state"=character(0))
  states <- names(final.data)
  rw <- as.integer(num)
  for(state in states){
      counts <-nrow(final.data[[state]])
      if(num == "best"){
        rw <- 1
      }else if(num == "worst"){
        rw <- counts
      }
      if(rw > counts){
        row.data <- data.frame("hospital"=NA, "state"= state)
        result <- rbind(result,row.data)
      }else {
          row.data <- final.data[[state]][rw, c(2, 7)]
          row.data <- data.frame("hospital"=row.data[,1], "state"= row.data[,2])
          result <- rbind(result,row.data)
      }
  }
  return(result)
}