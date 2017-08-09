##Codebook
-------------------------------------------------------------

The features selected for this database are derived from the accelerometer (Acc) and gyroscope(Gyro) 3-axial('-XYZ' is used to denote 3-axial signals in the X, Y and Z directions) raw signals. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccJerk-XYZ and timeBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccMagnitude, timeGravityAccMagnitude, timeBodyAccJerkMagnitude, timeBodyGyroMagnitude, timeBodyGyroJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing freqBodyAcc-XYZ, freqBodyAccJerk-XYZ, freqBodyGyro-XYZ, freqBodyAccJerkMagnitude, freqBodyGyroMagnitude, freqBodyGyroJerkMagnitude. (Note the 'freq' to indicate frequency domain signals). 

Multiple observations of these signals were used to compute means(Mean) and standard deviations (StdDev) of variables of the feature vector for each activity and subject. Since there are 6 activities and 30 subjects, tidydat.txt contains 180 rows of values. 

##Complete list of variables in tidydat.txt
-----------------------------------------------

subjectid - an identifier for the person who performed the activity (range: 1 to 30) 
activitytype - indicates the type of activity performed (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
activityid - a numeric label corresponding to each of the 6 activities in activitytype (range: 1 to 6)

timeBodyAccMean-X
timeBodyAccMean-Y
timeBodyAccMean-Z
timeBodyAccStdDev-X
timeBodyAccStdDev-Y
timeBodyAccStdDev-Z
timeGravityAccMean-X
timeGravityAccMean-Y
timeGravityAccMean-Z
timeGravityAccStdDev-X
timeGravityAccStdDev-Y
timeGravityAccStdDev-Z
timeBodyAccJerkMean-X
timeBodyAccJerkMean-Y
timeBodyAccJerkMean-Z
timeBodyAccJerkStdDev-X
timeBodyAccJerkStdDev-Y
timeBodyAccJerkStdDev-Z
timeBodyGyroMean-X
timeBodyGyroMean-Y
timeBodyGyroMean-Z
timeBodyGyroStdDev-X
timeBodyGyroStdDev-Y
timeBodyGyroStdDev-Z
timeBodyGyroJerkMean-X
timeBodyGyroJerkMean-Y
timeBodyGyroJerkMean-Z
timeBodyGyroJerkStdDev-X
timeBodyGyroJerkStdDev-Y
timeBodyGyroJerkStdDev-Z
timeBodyAccMagnitudeMean
timeBodyAccMagnitudeStdDev
timeGravityAccMagnitudeMean
timeGravityAccMagnitudeStdDev
timeBodyAccJerkMagnitudeMean
timeBodyAccJerkMagnitudeStdDev
timeBodyGyroMagnitudeMean
timeBodyGyroMagnitudeStdDev
timeBodyGyroJerkMagnitudeMean
timeBodyGyroJerkMagnitudeStdDev
freqBodyAccMean-X
freqBodyAccMean-Y
freqBodyAccMean-Z
freqBodyAccStdDev-X
freqBodyAccStdDev-Y
freqBodyAccStdDev-Z
freqBodyAccJerkMean-X
freqBodyAccJerkMean-Y
freqBodyAccJerkMean-Z
freqBodyAccJerkStdDev-X
freqBodyAccJerkStdDev-Y
freqBodyAccJerkStdDev-Z
freqBodyGyroMean-X
freqBodyGyroMean-Y
freqBodyGyroMean-Z
freqBodyGyroStdDev-X
freqBodyGyroStdDev-Y
freqBodyGyroStdDev-Z
freqBodyAccMagnitudeMean
freqBodyAccMagnitudeStdDev
freqBodyAccJerkMagnitudeMean
freqBodyAccJerkMagnitudeStdDev
freqBodyGyroMagnitudeMean
freqBodyGyroMagnitudeStdDev
freqBodyGyroJerkMagnitudeMean
freqBodyGyroJerkMagnitudeStdDev
