
## DATA DICTIONARY - *Human Activity Recognition Using Smartphones Dataset*
 
 --------
 >The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.   
 
>Subsequently, the body linear acceleration(accelerometer) and angular velocity(gyroscope) were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).   

>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

--------
### DESCRIPTION OF VARIABLES PRESENT IN THE DATA SET
 
 **_subject_id_ | Size(no of characters)=2**  
 >Id of the subjects participated in the excersise  
 range: 1..30
 
**_activity_ |    18**       
>Activities the person/subject performed wearing a smartphone (Samsung Galaxy S II) on the waist
 1. WALKING
 2. WALKING_UPSTAIRS
 3. WALKING_DOWNSTAIRS
 4. SITTING
 5. STANDING
 6. LAYING

**_activity_id_ |   1**    
>Id of the activity   
range: 1..6

---
>'t' in the below variables denote time
---

**_tBodyAcc-mean()-X_  |    6**      
>Mean of the acceleration signal of the body in X- direction  
range: 0.2..0.31 

**_tBodyAcc-mean()-Y_   |  7**          
>Mean of the acceleration signal of the body in Y- direction  
range: -0.041..-0.001

**_tBodyAcc-mean()-Z_   |  7**
>Mean of the acceleration signal of the body in Z- direction  
range: -0.16..-0.075

**_tBodyAcc-std()-X_    |    7**
>Standard deviation of the acceleration signal of the body in X- direction  
range: -1..0.63

**_tBodyAcc-std()-Y_    |     7**
>Standard deviation of the acceleration signal of the body in Y- direction  
range: -1..0.62

**_tBodyAcc-std()-Z_   |      7**
>Standard deviation of the acceleration signal of the body in X- direction  
range: -.99..0.61

**_tGravityAcc-mean()-X_   |  7**         
>Mean of the gravity acceleration signal of the body in X- direction  
range: -0.69..1

**_tGravityAcc-mean()-Y_   |  7**
>Mean of the gravity acceleration signal of the body in Y- direction  
range: -0.69..1

**_tGravityAcc-mean()-Z_    |    7**
>Mean of the gravity acceleration signal of the body in Z- direction  
range: -0.5..1

**_tGravityAcc-std()-X_	| 7
	Standard deviation of the gravity acceleration signal of the body in X- direction
	range: -0.9967642..-0.8295549

**_tGravityAcc-std()-Y_     |  7**
>Standard deviation of the gravity acceleration signal of the body in Y- direction  
range: -0.9942476..-0.6435784

**_tGravityAcc-std()-Z_	 | 7**
>Standard deviation of the gravity acceleration signal of the body in Z- direction  
range: -0.9909572..--0.6101612

**_tBodyAccJerk-mean()-X_ | 7**
>Mean of the Jerk signal of the body in X- direction  
range: 0.0426881..0.1301930

**_tBodyAccJerk-mean()-Y_	|	8**
>Mean of the Jerk signal of the body in Y- direction  
range: -0.03868721..0.05681859

**_tBodyAccJerk-mean()-Z_     | 8**
>Mean of the Jerk signal of the body in Z- direction  
range: -0.06745839..0.03805336

**_tBodyAccJerk-std()-X_  |  7**
>Standard deviation of Jerk signal of the body in X- direction  
range: -0.9946045..0.5442730

**_tBodyAccJerk-std()-Y_  |  7**
>Standard deviation of Jerk signal of the body in Y- direction  
range: -0.9895136..0.3553067

**_tBodyAccJerk-std()-Z_  |  8**
>Standard deviation of Jerk signal of the body in Z- direction  
range: -0.99328831..0.03101571

**_tBodyGyro-mean()-X_	| 7**
>Mean of the signal of the body from gyroscope in X- direction  
range: -0.2057754..0.1927045

**_tBodyGyro-mean()-Y_	| 8**
>Mean of the signal of the body from gyroscope in Y- direction  
range: -0.20420536..0.02747076

**_tBodyGyro-mean()-Z_		| 7**
>Mean of the signal of the body from gyroscope in Z- direction  
range: -0.0724546..0.1791021

**_tBodyGyro-std()-X_	| 7**	
>Standard deviation of the signal of the body from gyroscope in X- direction  
range: -0.9942766  0.2676572

**_tBodyGyro-std()-Y_	| 7**
>Standard deviation of the signal of the body from gyroscope in Y- direction 
range: -0.9942105..0.4765187

**_tBodyGyro-std()-Z_	| 7**
>Standard deviation of the signal of the body from gyroscope in Z- direction  
range: -0.9855384..0.5648758
	
**_tBodyGyroJerk-mean()-X_	| 8**
>Mean of Jerk signal of the body from gyroscope in X- direction  
range: -0.15721254..-0.02209163

**_tBodyGyroJerk-mean()-Y_	|	8**
>Mean of Jerk signal of the body from gyroscope in Y- direction  
range: -0.07680899..-0.01320228

**_tBodyGyroJerk-mean()-Z_	| 9**
>Mean of Jerk signal of the body from gyroscope in Z- direction  
range:  -0.092499853..-0.006940664

**_tBodyGyroJerk-std()-X_	|	7**
>Standard deviation of Jerk signal of the body from gyroscope in X- direction  
range:  -0.9965425  0.1791486

**_tBodyGyroJerk-std()-Y_	|	7**
>Standard deviation of Jerk signal of the body from gyroscope in Y- direction  
range: -0.9970816 .. 0.2959459

**_tBodyGyroJerk-std()-Z_ |	7**
>Standard deviation of Jerk signal of the body from gyroscope in Z- direction  
range: -0.9953808 .. 0.1932065

**_tBodyAccMag-mean()_ |	7**
>Mean Magnitude of these three-dimensional signals of body acceleration calculated using the Euclidean norm   
range: -0.9864932 .. 0.6446043

**_tBodyAccMag-std()_	| 7**
>Standard deviation of Magnitude of these three-dimensional signals of body acceleration calculated using the Euclidean norm  
range: -0.9864645 .. 0.4284059

**_tGravityAccMag-mean()_ |		7**
>Mean Magnitude of these three-dimensional signals of gravity acceleration calculated using the Euclidean norm  
range: -0.9864932 .. 0.6446043

**_tGravityAccMag-std()_ |	7**
>Standard deviation of Magnitude of these three-dimensional signals of gravity acceleration calculated using the Euclidean norm  
range: -0.9864645  0.4284059

**_tBodyAccJerkMag-mean()_ |	7**
>Mean Magnitude of these three-dimensional Jerk signals of body acceleration calculated using the Euclidean norm  
range: -0.9928147 .. 0.4344904

**_tBodyAccJerkMag-std()_ |		7**
>Standar deviation of Magnitude of these three-dimensional Jerk signals of body acceleration calculated using the Euclidean norm  
range: -0.9946469 .. 0.4506121

**_tBodyGyroMag-mean()_	|	7**
>Mean Magnitude of these three-dimensional signals from gyroscope calculated using the Euclidean norm  
range: -0.9807408 .. 0.4180046

**_tBodyGyroMag-std()_ |   7**
>Standard deviation of Magnitude of these three-dimensional signals from gyroscope calculated using the Euclidean norm   
range: -0.9813727 .. 0.2999760

**_tBodyGyroJerkMag-mean()_	|	8**
>Mean Magnitude of these three-dimensional Jerk signals from gyroscope calculated using the Euclidean norm   
range: -0.99732253 .. 0.08758166

**_tBodyGyroJerkMag-std()_	|	7**
>Standard deviation of Magnitude of these three-dimensional Jerk signals from gyroscope calculated using the Euclidean norm  
range: -0.9976661 .. 0.2501732

---
>Fast Fourier Transform (FFT) was applied to signal and the below variables(starting with f) were claculated
'f' to indicate frequency domain signals
---

**_fBodyAcc-mean()-X_	|	7**
>Mean of the acceleration signal of the body in X- direction  
range: -0.9952499 .. 0.5370120

**_fBodyAcc-mean()-Y_	|	7**
>Mean of the acceleration signal of the body in Y- direction  
range: -0.9890343 .. 0.5241877

**_fBodyAcc-mean()-Z_	|	7**
>Mean of the acceleration signal of the body in Z- direction  
range: -0.9894739 .. 0.2807360

**_fBodyAcc-std()-X_	|	7**
>Standard deviation of the acceleration signal of the body in X- direction  
range:  -0.9966046 .. 0.6585065

**_fBodyAcc-std()-Y_	|	7**
>Standard deviation of the acceleration signal of the body in Y- direction  
range:  -0.9906804 .. 0.5601913

**_fBodyAcc-std()-Z_	|	7**
>Standard deviation of the acceleration signal of the body in Z- direction  
range:  -0.9872248 .. 0.6871242

**_fBodyAcc-meanFreq()-X_	| 7**
>Weighted average of the frequency components to obtain a mean frequency in X-direction  
range: -0.6359130 .. 0.1591236

**_fBodyAcc-meanFreq()-Y_	|	7**
>Weighted average of the frequency components to obtain a mean frequency in Y-direction  
range: -0.3795185 .. 0.4665282

**_fBodyAcc-meanFreq()-Z_	|	7**
>Weighted average of the frequency components to obtain a mean frequency in Z-direction  
range:  -0.5201148 .. 0.4025326

**_fBodyAccJerk-mean()-X_ |	7**
>Mean of the acceleration Jerk signal of the body in X- direction  
range: -0.9946308 .. 0.4743173

**_fBodyAccJerk-mean()-Y_	|	7**
>Mean of the acceleration Jerk signal of the body in Y- direction  
range: -0.9893988 .. 0.2767169

**_fBodyAccJerk-mean()-Z_ | 7**
>Mean of the acceleration Jerk signal of the body in Z- direction  
range: -0.9920184 .. 0.1577757

**_fBodyAccJerk-std()-X_	|	7**
>Standard deviation of the acceleration Jerk signal of the body in X- direction  
range: -0.9950738  0.4768039

**_fBodyAccJerk-std()-Y_	|		7**
>Standard deviation of the acceleration Jerk signal of the body in Y- direction  
range: -0.9904681  0.3497713

**_fBodyAccJerk-std()-Z_	| 7**
>Standard deviation of the acceleration Jerk signal of the body in Z- direction  
range: -0.993107760 -0.006236475

**_fBodyAccJerk-meanFreq()-X_	|	7**
>Weighted average of the frequency components to obtain a mean frequency in X-direction  
range: -0.5760440 .. 0.3314493

**_fBodyAccJerk-meanFreq()-Y_	|	7**
>Weighted average of the frequency components to obtain a mean frequency in Y-direction  
range: -0.6019714 .. 0.1956773

**_fBodyAccJerk-meanFreq()-Z_	|	7**
>Weighted average of the frequency components to obtain a mean frequency in Z-direction  
range:  -0.6275555 .. 0.2301079

**_fBodyGyro-mean()-X_ | 7**
>Mean of the signal of the body from gyroscope in X- direction  
range: -0.9931226 .. 0.4749624

**_fBodyGyro-mean()-Y_	|	7**
>Mean of the signal of the body from gyroscope in Y- direction
range: -0.9940255 .. 0.3288170

**_fBodyGyro-mean()-Z_		| 7**
>Mean of the signal of the body from gyroscope in Z- direction  
range: -0.9859578 .. 0.4924144

**_fBodyGyro-std()-X_	|		7**
>Standad deviation of the signal of the body from gyroscope in X- direction  
range: -0.9946522 .. 0.1966133

**_fBodyGyro-std()-Y_	|		7**
>Standad deviation of the signal of the body from gyroscope in Y- direction  
range: -0.9943531 .. 0.6462336

**_fBodyGyro-std()-Z_	| 7**
>Standad deviation of the signal of the body from gyroscope in Z- direction  
range: -0.9867253 .. 0.5224542

**_fBodyGyro-meanFreq()-X_	| 7**
>Weighted average of the frequency components to obtain a mean frequency in X-direction  
range: -0.3957702 .. 0.2492094

**_fBodyGyro-meanFreq()-Y_	|	7**
>Weighted average of the frequency components to obtain a mean frequency in Y-direction  
range: -0.6668148  0.2731413

**_fBodyGyro-meanFreq()-Z_ |		7**
>Weighted average of the frequency components to obtain a mean frequency in Z-direction  
range: -0.5074909 .. 0.3770741

**_fBodyAccMag-mean()_	|	7**
>Mean Magnitude of these three-dimensional signals of body acceleration calculated using the Euclidean norm   
range: -0.9868006 .. 0.5866376

**_fBodyAccMag-std()_	|	7**
>Standard deviation Magnitude of these three-dimensional signals of body acceleration calculated using the Euclidean norm   
range: -0.. 0.1786846

**_fBodyAccMag-meanFreq()_	|	7**
>Weighted average of the frequency components of Magnitude calculation using the Euclidean norm  
range: -0.3123380 .. 0.4358469

**_fBodyBodyAccJerkMag-mean()_	| 7**
>Mean Magnitude of these three-dimensional Jerk signals of body acceleration calculated using the Euclidean norm   
range: -0.9939983 .. 0.5384048

**_fBodyBodyAccJerkMag-std()_	|	7**
>Standard deviation Magnitude of these three-dimensional Jerk signals of body acceleration calculated using the Euclidean norm   
range: -0.9943667 .. 0.3163464

**_fBodyBodyAccJerkMag-meanFreq()_	|	7**
>Weighted average of the frequency components of Magnitude calculation using the Euclidean norm  
range: -0.1252104 .. 0.4880885

**_fBodyBodyGyroMag-mean()_	| 7**
>Mean Magnitude of these three-dimensional signals from gyroscope calculated using the Euclidean norm   
range: -0.9865352 .. 0.2039798

**_fBodyBodyGyroMag-std()_	|	7**
>Standard deviation of Magnitude of these three-dimensional signals from gyroscope calculated using the Euclidean norm  
range: -0.9814688 .. 0.2366597

**_fBodyBodyGyroMag-meanFreq()	| 7**
> Weighted average of the frequency components of Magnitude calculation using the Euclidean norm of three-dimensional signals from gyroscope  
range: -0.4566387 .. 0.4095216

**_fBodyBodyGyroJerkMag-mean()_	|7**
>Mean Magnitude of these three-dimensional Jerk signals from gyroscope calculated using the Euclidean norm   
range: -0.9976174 .. 0.1466186

**_fBodyBodyGyroJerkMag-std()_	|	7**
>Standard deviation of Magnitude of these three-dimensional Jerk signals from gyroscope calculated using the Euclidean norm  
range: -0.9975852 .. 0.2878346

**_fBodyBodyGyroJerkMag-meanFreq()_	|	7**
>Weighted average of the frequency components of Magnitude calculation using the Euclidean norm of three-dimensional jerk signals from gyroscope  
range: -0.1829236 .. 0.4263017
