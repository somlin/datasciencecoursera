
## Programming Assignmnet - Human Activity Recognition Using Smartphones Dataset

>Experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.   
>The detail information about the variables/attriutes collected/calculated are present in CodeBook.md

-----
>The task for this assignmnet is to
 * Create one R script called run_analysis.R that does the following.

  * Merges the training and the test sets to create one data set.
  * Extracts only the measurements on the mean and standard deviation for each measurement.
  * Uses descriptive activity names to name the activities in the data set
  * Appropriately labels the data set with descriptive variable names.
  * From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

---
>The script **_run_analysis.R_** :

**_Reads all the fetaure names from features.txt. Then get the index of all thevariables which are measurements for mean and standard deviation.Then with index filter out the required feature names._**   
>Code for this part:  
 >features <- read.table("UCI HAR Dataset\\features.txt",header=FALSE,sep=" ",
                       strip.white = TRUE,stringsAsFactors=FALSE,na.strings = "EMPTY")  

 >index <- grep("std|mean", features[1:561,2])  
 >features<- features[index,2]  
 
**_Creating the Training data set_**  
 
 # Read the X_training data    
 
 > X_train <- read.table("UCI HAR Dataset\\train\\X_train.txt",header=FALSE,
                      strip.white = TRUE,stringsAsFactors=FALSE,na.strings = "EMPTY")  
 > X_train <- X_train[1:7352,index]  
 
 # Read the activity data from Y_train  
 > Y_train <- read.table("UCI HAR Dataset\\train\\Y_train.txt",header=FALSE,
                      strip.white = TRUE,stringsAsFactors=FALSE,na.strings = "EMPTY")
 > activities <- as.numeric(Y_train[1:7352,1])

 # Get the subject details
 > subject <- read.table("UCI HAR Dataset\\train\\subject_train.txt",header=FALSE,sep=" ",
                      strip.white = TRUE,stringsAsFactors=FALSE,na.strings = "EMPTY")
 > subject <- as.numeric(subject[1:7352,1])

 # Create the training data set by adding the activity data to X_train data set 
 > training.data <- cbind(activities,X_train)
 > training.data <- cbind(subject,training.data)
 
**_Creating the Test data set_**
>Code for this part:  
 # Read the X_training data   
 > X_test <- read.table("UCI HAR Dataset\\test\\X_test.txt",header=FALSE,
                     strip.white = TRUE,stringsAsFactors=FALSE,na.strings = "EMPTY")  
 > X_test <- X_test[1:2947,index]  

 # Read the activity data from Y_test  
 > Y_test <- read.table("UCI HAR Dataset\\test\\Y_test.txt",header=FALSE,
                     strip.white = TRUE,stringsAsFactors=FALSE,na.strings = "EMPTY")  
 > activities <- as.numeric(Y_test[1:2947,1])  

 # Read the subject details  
 > subject <- read.table("UCI HAR Dataset\\test\\subject_test.txt",header=FALSE,sep=" ",
                      strip.white = TRUE,stringsAsFactors=FALSE,na.strings = "EMPTY")  
 > subject <- as.numeric(subject[1:2947,1])  

 # Create the test.data set by adding activities to X_test  
 > test.data <- cbind(activities,X_test)  
 > test.data <- cbind(subject,test.data)  
 
**_Generate the final data set by combining traing and test data set_**  

 > final.data <- rbind(training.data,test.data)
 > colnames(final.data) <- c("subject_id","activity_id",features)

**_Add the activities labels to the data set_**  
> activities.labels <- read.table("UCI HAR Dataset\\activity_labels.txt",header=FALSE,
                                sep=" ",strip.white = TRUE,stringsAsFactors=FALSE,
                                na.strings = "EMPTY")  
> colnames(activities.labels) <- c("activity_id", "activity")  

> final.data <- merge(activities.labels,final.data,by="activity_id")  

**_Generate the Average(result) data set_**  
> Avg.data <- final.data %>% group_by(subject_id,activity) %>% 
  summarize_each(funs(mean))   

**_Write data to file_**  
> write.table(Avg.data, "Avg_data.txt", sep="\t",row.names = FALSE)  
