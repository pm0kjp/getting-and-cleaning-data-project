# getting-and-cleaning-data-project
Course Project for Coursera's Getting and Cleaning Data

The run_analysis.R script downloads a data set from Samsung phone data, combines test and train data, and creates a tidy data set that includes the average of the mean and standard deviation of various features for each activity (6 physical actions such as walking downstairs and standing) and each subject (30 individuals).

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

##Variables in the tidy data set

###Activity or Subject:
  The activity or subject across which feature means were calculated

###Mean of tBodyAcc-XYZ-mean():
	The mean across subject or activity of the mean of the tBodyAcc-XYZ feature

###Mean of tBodyAcc-XYZ-std()
	The mean across subject or activity of the standard deviation of the tBodyAcc-XYZ feature

###Mean of tGravityAcc-XYZ-mean():
	The mean across subject or activity of the mean of the tGravityAcc-XYZ feature

###Mean of tGravityAcc-XYZ-std()
	The mean across subject or activity of the standard deviation of the tGravityAcc-XYZ feature

###Mean of tBodyAccJerk-XYZ-mean():
	The mean across subject or activity of the mean of the tBodyAccJerk-XYZ feature

###Mean of tBodyAccJerk-XYZ-std()
	The mean across subject or activity of the standard deviation of the tBodyAccJerk-XYZ feature

###Mean of tBodyGyro-XYZ-mean():
	The mean across subject or activity of the mean of the tBodyGyro-XYZ feature

###Mean of tBodyGyro-XYZ-std()
	The mean across subject or activity of the standard deviation of the tBodyGyro-XYZ feature

###Mean of tBodyGyroJerk-XYZ-mean():
	The mean across subject or activity of the mean of the tBodyGyroJerk-XYZ feature

###Mean of tBodyGyroJerk-XYZ-std()
	The mean across subject or activity of the standard deviation of the tBodyGyroJerk-XYZ feature

###Mean of tBodyAccMag-mean():
	The mean across subject or activity of the mean of the tBodyAccMag feature

###Mean of tBodyAccMag-std()
	The mean across subject or activity of the standard deviation of the tBodyAccMag feature

###Mean of tGravityAccMag-mean():
	The mean across subject or activity of the mean of the tGravityAccMag feature

###Mean of tGravityAccMag-std()
	The mean across subject or activity of the standard deviation of the tGravityAccMag feature

###Mean of tBodyAccJerkMag-mean():
	The mean across subject or activity of the mean of the tBodyAccJerkMag feature

###Mean of tBodyAccJerkMag-std()
	The mean across subject or activity of the standard deviation of the tBodyAccJerkMag feature

###Mean of tBodyGyroMag-mean():
	The mean across subject or activity of the mean of the tBodyGyroMag feature

###Mean of tBodyGyroMag-std()
	The mean across subject or activity of the standard deviation of the tBodyGyroMag feature

###Mean of tBodyGyroJerkMag-mean():
	The mean across subject or activity of the mean of the tBodyGyroJerkMag feature

###Mean of tBodyGyroJerkMag-std()
	The mean across subject or activity of the standard deviation of the tBodyGyroJerkMag feature

###Mean of fBodyAcc-XYZ-mean():
	The mean across subject or activity of the mean of the fBodyAcc-XYZ feature

###Mean of fBodyAcc-XYZ-std()
	The mean across subject or activity of the standard deviation of the fBodyAcc-XYZ feature

###Mean of fBodyAccJerk-XYZ-mean():
	The mean across subject or activity of the mean of the fBodyAccJerk-XYZ feature

###Mean of fBodyAccJerk-XYZ-std()
	The mean across subject or activity of the standard deviation of the fBodyAccJerk-XYZ feature

###Mean of fBodyGyro-XYZ-mean():
	The mean across subject or activity of the mean of the fBodyGyro-XYZ feature

###Mean of fBodyGyro-XYZ-std()
	The mean across subject or activity of the standard deviation of the fBodyGyro-XYZ feature

###Mean of fBodyAccMag-mean():
	The mean across subject or activity of the mean of the fBodyAccMag feature

###Mean of fBodyAccMag-std()
	The mean across subject or activity of the standard deviation of the fBodyAccMag feature

###Mean of fBodyAccJerkMag-mean():
	The mean across subject or activity of the mean of the fBodyAccJerkMag feature

###Mean of fBodyAccJerkMag-std()
	The mean across subject or activity of the standard deviation of the fBodyAccJerkMag feature

###Mean of fBodyGyroMag-mean():
	The mean across subject or activity of the mean of the fBodyGyroMag feature

###Mean of fBodyGyroMag-std()
	The mean across subject or activity of the standard deviation of the fBodyGyroMag feature

###Mean of fBodyGyroJerkMag-mean():
	The mean across subject or activity of the mean of the fBodyGyroJerkMag feature

###Mean of fBodyGyroJerkMag-std()
	The mean across subject or activity of the standard deviation of the fBodyGyroJerkMag feature

