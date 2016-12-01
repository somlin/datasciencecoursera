 DATA DICTIONARY - *Human Activity Recognition Using Smartphones Dataset*
 
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

**_tGravityAcc-std()-X_		7
	Standard deviation of the gravity acceleration signal of the body in X- direction
	range: -0.9967642..-0.8295549

tGravityAcc-std()-Y		7
	Standard deviation of the gravity acceleration signal of the body in Y- direction
	range: -0.9942476..-0.6435784

tGravityAcc-std()-Z		7
	Standard deviation of the gravity acceleration signal of the body in Z- direction
	range: -0.9909572..--0.6101612

tBodyAccJerk-mean()-X		7
	Mean of the Jerk signal of the body in X- direction
	range: 0.0426881..0.1301930

tBodyAccJerk-mean()-Y		8
	Mean of the Jerk signal of the body in Y- direction
	range: -0.03868721..0.05681859

tBodyAccJerk-mean()-Z		8
	Mean of the Jerk signal of the body in Z- direction
	range: -0.06745839..0.03805336

tBodyAccJerk-std()-X		7
	Standard deviation of Jerk signal of the body in X- direction
	range: -0.9946045..0.5442730

tBodyAccJerk-std()-Y		7
	Standard deviation of Jerk signal of the body in Y- direction
	range: -0.9895136..0.3553067

tBodyAccJerk-std()-Z		8
	Standard deviation of Jerk signal of the body in Z- direction
	range: -0.99328831..0.03101571

tBodyGyro-mean()-X		7
	Mean of the signal of the body from gyroscope in X- direction
	range: -0.2057754..0.1927045

tBodyGyro-mean()-Y		8
	Mean of the signal of the body from gyroscope in Y- direction
	range: -0.20420536..0.02747076

tBodyGyro-mean()-Z		7
	Mean of the signal of the body from gyroscope in Z- direction
	range: -0.0724546..0.1791021

tBodyGyro-std()-X		7	
	Standard deviation of the signal of the body from gyroscope in X- direction
	range: -0.9942766  0.2676572

tBodyGyro-std()-Y		7
	Standard deviation of the signal of the body from gyroscope in Y- direction
	range: -0.9942105..0.4765187

tBodyGyro-std()-Z		7
	Standard deviation of the signal of the body from gyroscope in Z- direction
	range: -0.9855384..0.5648758
	
tBodyGyroJerk-mean()-X		8
	Mean of Jerk signal of the body from gyroscope in X- direction
	range: -0.15721254..-0.02209163

tBodyGyroJerk-mean()-Y		8
	Mean of Jerk signal of the body from gyroscope in Y- direction
	range: -0.07680899..-0.01320228

tBodyGyroJerk-mean()-Z		9
	Mean of Jerk signal of the body from gyroscope in Z- direction
	range:  -0.092499853..-0.006940664

tBodyGyroJerk-std()-X			7
	Standard deviation of Jerk signal of the body from gyroscope in X- direction
	range:  -0.9965425  0.1791486

tBodyGyroJerk-std()-Y			7
	Standard deviation of Jerk signal of the body from gyroscope in Y- direction
	range: -0.9970816 .. 0.2959459

tBodyGyroJerk-std()-Z			7
	Standard deviation of Jerk signal of the body from gyroscope in Z- direction
	range: -0.9953808 .. 0.1932065

tBodyAccMag-mean()			7
	Mean Magnitude of these three-dimensional signals of body acceleration calculated using the Euclidean norm 
	range: -0.9864932 .. 0.6446043

tBodyAccMag-std()			7
	Standard deviation of Magnitude of these three-dimensional signals of body acceleration calculated using the Euclidean norm 
	range: -0.9864645 .. 0.4284059

tGravityAccMag-mean()			7
	Mean Magnitude of these three-dimensional signals of gravity acceleration calculated using the Euclidean norm 
	range: -0.9864932 .. 0.6446043

tGravityAccMag-std()			7
	Standard deviation of Magnitude of these three-dimensional signals of gravity acceleration calculated using the Euclidean norm 
	range: -0.9864645  0.4284059

tBodyAccJerkMag-mean()		7
	Mean Magnitude of these three-dimensional Jerk signals of body acceleration calculated using the Euclidean norm 
	range: -0.9928147 .. 0.4344904

tBodyAccJerkMag-std()			7
	Standar deviation of Magnitude of these three-dimensional Jerk signals of body acceleration calculated using the Euclidean norm 
	range: -0.9946469 .. 0.4506121

tBodyGyroMag-mean()			7
	Mean Magnitude of these three-dimensional signals from gyroscope calculated using the Euclidean norm 
	range: -0.9807408 .. 0.4180046

tBodyGyroMag-std()
	Standard deviation of Magnitude of these three-dimensional signals from gyroscope calculated using the Euclidean norm 
	range: -0.9813727 .. 0.2999760

tBodyGyroJerkMag-mean()		8
	Mean Magnitude of these three-dimensional Jerk signals from gyroscope calculated using the Euclidean norm 
	range: -0.99732253 .. 0.08758166

tBodyGyroJerkMag-std()		7
	Standard deviation of Magnitude of these three-dimensional Jerk signals from gyroscope calculated using the Euclidean norm 
	range: -0.9976661 .. 0.2501732

-----------------------------------------------------------------------------------------------------------------
Note: Fast Fourier Transform (FFT) was applied to signal and the below variables(starting with f) were claculated
------------------------------------------------------------------------------------------------------------------

fBodyAcc-mean()-X			7
	'f' to indicate frequency domain signals
	Mean of the acceleration signal of the body in X- direction
	range: -0.9952499 .. 0.5370120

fBodyAcc-mean()-Y			7
	Mean of the acceleration signal of the body in Y- direction
	range: -0.9890343 .. 0.5241877

fBodyAcc-mean()-Z			7
	Mean of the acceleration signal of the body in Z- direction
	range: -0.9894739 .. 0.2807360

fBodyAcc-std()-X			7
	Standard deviation of the acceleration signal of the body in X- direction
	range:  -0.9966046 .. 0.6585065

fBodyAcc-std()-Y			7
	Standard deviation of the acceleration signal of the body in Y- direction
	range:  -0.9906804 .. 0.5601913

fBodyAcc-std()-Z			7
	Standard deviation of the acceleration signal of the body in Z- direction
	range:  -0.9872248 .. 0.6871242

fBodyAcc-meanFreq()-X			7
	Weighted average of the frequency components to obtain a mean frequency in X-direction
	range: -0.6359130 .. 0.1591236

fBodyAcc-meanFreq()-Y			7
	Weighted average of the frequency components to obtain a mean frequency in Y-direction
	range: -0.3795185 .. 0.4665282

fBodyAcc-meanFreq()-Z			7
	Weighted average of the frequency components to obtain a mean frequency in Z-direction
	range:  -0.5201148 .. 0.4025326

fBodyAccJerk-mean()-X			7
	Mean of the acceleration Jerk signal of the body in X- direction
	range: -0.9946308 .. 0.4743173

fBodyAccJerk-mean()-Y 		7
	Mean of the acceleration Jerk signal of the body in Y- direction
	range: -0.9893988 .. 0.2767169

fBodyAccJerk-mean()-Z			7
	Mean of the acceleration Jerk signal of the body in Z- direction
	range: -0.9920184 .. 0.1577757

fBodyAccJerk-std()-X			7
	Standard deviation of the acceleration Jerk signal of the body in X- direction
	range: -0.9950738  0.4768039

fBodyAccJerk-std()-Y			7
	Standard deviation of the acceleration Jerk signal of the body in Y- direction
	range: -0.9904681  0.3497713

fBodyAccJerk-std()-Z			7
	Standard deviation of the acceleration Jerk signal of the body in Z- direction
	range: -0.993107760 -0.006236475

fBodyAccJerk-meanFreq()-X		7
	Weighted average of the frequency components to obtain a mean frequency in X-direction
	range: -0.5760440 .. 0.3314493

fBodyAccJerk-meanFreq()-Y		7
	Weighted average of the frequency components to obtain a mean frequency in Y-direction
	range: -0.6019714 .. 0.1956773

fBodyAccJerk-meanFreq()-Z		7
	Weighted average of the frequency components to obtain a mean frequency in Z-direction
	range:  -0.6275555 .. 0.2301079

fBodyGyro-mean()-X			7
	Mean of the signal of the body from gyroscope in X- direction
	range: -0.9931226 .. 0.4749624

fBodyGyro-mean()-Y			7
	Mean of the signal of the body from gyroscope in Y- direction
	range: -0.9940255 .. 0.3288170

fBodyGyro-mean()-Z			7
	Mean of the signal of the body from gyroscope in Z- direction
	range: -0.9859578 .. 0.4924144

fBodyGyro-std()-X			7
	Standad deviation of the signal of the body from gyroscope in X- direction
	range: -0.9946522 .. 0.1966133

fBodyGyro-std()-Y			7
	Standad deviation of the signal of the body from gyroscope in Y- direction
	range: -0.9943531 .. 0.6462336

fBodyGyro-std()-Z			7
	Standad deviation of the signal of the body from gyroscope in Z- direction
	range: -0.9867253 .. 0.5224542

fBodyGyro-meanFreq()-X		7
	Weighted average of the frequency components to obtain a mean frequency in X-direction
	range: -0.3957702 .. 0.2492094

fBodyGyro-meanFreq()-Y		7
	Weighted average of the frequency components to obtain a mean frequency in Y-direction
	range: -0.6668148  0.2731413

fBodyGyro-meanFreq()-Z		7
	Weighted average of the frequency components to obtain a mean frequency in Z-direction
	range: -0.5074909 .. 0.3770741

fBodyAccMag-mean()			7
	Mean Magnitude of these three-dimensional signals of body acceleration calculated using the Euclidean norm 
	range: -0.9868006 .. 0.5866376

fBodyAccMag-std()			7
	Standard deviation Magnitude of these three-dimensional signals of body acceleration calculated using the Euclidean norm 
	range: -0.. 0.1786846

fBodyAccMag-meanFreq()		7
	Weighted average of the frequency components of Magnitude calculation using the Euclidean norm
	range: -0.3123380 .. 0.4358469

fBodyBodyAccJerkMag-mean()		7
	Mean Magnitude of these three-dimensional Jerk signals of body acceleration calculated using the Euclidean norm 
	range: -0.9939983 .. 0.5384048

fBodyBodyAccJerkMag-std()		7
	Standard deviation Magnitude of these three-dimensional Jerk signals of body acceleration calculated using the Euclidean norm 
	range: -0.9943667 .. 0.3163464

fBodyBodyAccJerkMag-meanFreq()		7
	Weighted average of the frequency components of Magnitude calculation using the Euclidean norm
	range: -0.1252104 .. 0.4880885

fBodyBodyGyroMag-mean()		7
	Mean Magnitude of these three-dimensional signals from gyroscope calculated using the Euclidean norm 
	range: -0.9865352 .. 0.2039798

fBodyBodyGyroMag-std()		7
	Standard deviation of Magnitude of these three-dimensional signals from gyroscope calculated using the Euclidean norm 
	range: -0.9814688 .. 0.2366597

fBodyBodyGyroMag-meanFreq()	7
	Weighted average of the frequency components of Magnitude calculation using the Euclidean norm of three-dimensional signals from gyroscope
	range: -0.4566387 .. 0.4095216

fBodyBodyGyroJerkMag-mean()		7
	Mean Magnitude of these three-dimensional Jerk signals from gyroscope calculated using the Euclidean norm 
	range: -0.9976174 .. 0.1466186

fBodyBodyGyroJerkMag-std()		7
	Standard deviation of Magnitude of these three-dimensional Jerk signals from gyroscope calculated using the Euclidean norm 
	range: -0.9975852 .. 0.2878346

fBodyBodyGyroJerkMag-meanFreq()		7
	Weighted average of the frequency components of Magnitude calculation using the Euclidean norm of three-dimensional jerk signals from gyroscope
	range: -0.1829236 .. 0.4263017
