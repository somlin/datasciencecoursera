best <- function(state,outcome){
    #Reading outcome data
    filename <- file.path("ProgAssignment3-data","outcome-of-care-measures.csv")
    outcome.data <- read.csv(filename,colClasses = "character")
    #print(outcome)
    #print(names(outcome.data))
    valid.outcomes <- c("heart attack"=11, "heart failure"=17, "pneumonia"=23)
    if(sum(outcome.data$State == state,na.rm=TRUE) == 0){
        stop("Invalid State")
    }
    #print("Hi I am here")
    if(outcome %in% names(valid.outcomes) == FALSE){
        stop("Invalid outcome")
    }
    #print("Hello WORLD!!!!")
    cl <- valid.outcomes[[outcome]]
    data <- subset(outcome.data,State == state)
    #print(nrow(data))
    bad <- is.na(as.numeric(data[,cl]))
    #print(sum(bad))
    data <- data[!bad,]
    
    m <- min(as.numeric(data[,cl]))
    #print(m)
    result <- data[data[,cl] == m,]
    result <- result[order(result$State),]
    return(result[1,2])
}