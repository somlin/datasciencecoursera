#Load the required library
library(dplyr)

#Read the feature names/Variable names
#---------------------------------------
features <- read.table("UCI HAR Dataset\\features.txt",header=FALSE,sep=" ",
                       strip.white = TRUE,stringsAsFactors=FALSE,na.strings = "EMPTY")

#Get all index of feature names with std or mean
index <- grep("std|mean", features[1:561,2])
features<- features[index,2]

# Creating the Training data set
#----------------------------------

# Read the X_training data
X_train <- read.table("UCI HAR Dataset\\train\\X_train.txt",header=FALSE,
                      strip.white = TRUE,stringsAsFactors=FALSE,na.strings = "EMPTY")
X_train <- X_train[1:7352,index]

# Read the activity data from Y_train
Y_train <- read.table("UCI HAR Dataset\\train\\Y_train.txt",header=FALSE,
                      strip.white = TRUE,stringsAsFactors=FALSE,na.strings = "EMPTY")
activities <- as.numeric(Y_train[1:7352,1])

# Get the subject details
subject <- read.table("UCI HAR Dataset\\train\\subject_train.txt",header=FALSE,sep=" ",
                      strip.white = TRUE,stringsAsFactors=FALSE,na.strings = "EMPTY")
subject <- as.numeric(subject[1:7352,1])

# Create the training data set by adding the activity data to X_train data set 
training.data <- cbind(activities,X_train)
training.data <- cbind(subject,training.data)

# Creating the Test data set
#--------------------------------------------
X_test <- read.table("UCI HAR Dataset\\test\\X_test.txt",header=FALSE,
                     strip.white = TRUE,stringsAsFactors=FALSE,na.strings = "EMPTY")
X_test <- X_test[1:2947,index]

#Read the activity data from Y_test
Y_test <- read.table("UCI HAR Dataset\\test\\Y_test.txt",header=FALSE,
                     strip.white = TRUE,stringsAsFactors=FALSE,na.strings = "EMPTY")
activities <- as.numeric(Y_test[1:2947,1])

#Read the subject details
subject <- read.table("UCI HAR Dataset\\test\\subject_test.txt",header=FALSE,sep=" ",
                      strip.white = TRUE,stringsAsFactors=FALSE,na.strings = "EMPTY")
subject <- as.numeric(subject[1:2947,1])

# Create the test.data set by adding activities to X_test
test.data <- cbind(activities,X_test)
test.data <- cbind(subject,test.data)

# Generate the final data set by combining traing and test data set
#------------------------------------------------------------------
final.data <- rbind(training.data,test.data)
colnames(final.data) <- c("subject_id","activity_id",features)

# Add the activities labels to the data set
activities.labels <- read.table("UCI HAR Dataset\\activity_labels.txt",header=FALSE,
                                sep=" ",strip.white = TRUE,stringsAsFactors=FALSE,
                                na.strings = "EMPTY")
colnames(activities.labels) <- c("activity_id", "activity")

final.data <- merge(activities.labels,final.data,by="activity_id")

# Generate the Average(result) data set
#------------------------------------
Avg.data <- final.data %>% group_by(subject_id,activity) %>% 
  summarize_each(funs(mean)) 

# Write data to file
#------------------------------------
write.table(Avg.data, "Avg_data.txt", sep="\t",row.names = FALSE)
