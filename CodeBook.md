CodeBook.md
========================================================

## Experimental Design:

From the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), the source for the data:

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
>
> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Feature Selection:

The data was collected and measured in the following manner (from the "features_info.txt" file contained in the source data):

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
>
> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
>
> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
>
> These signals were used to estimate variables of the feature vector for each pattern:  
> '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

For an explaination of the difference between the "time" and "frequency" domains, Wikipedia has a nice overview here: https://en.wikipedia.org/wiki/Frequency_domain

## Code Book / Variable Description:

The tidy dataset created by the "run_analysis.R" script contains the following variables:

### Identifying variables

#### Activity
A text value with six (6) possible values, indicating the type of activity the experiment was performing at the time the measurements were taken:
  - WALKING
  - WALKING_UPSTAIRS
  - WALKING_DOWNSTAIRS
  - SITTING
  - STANDING
  - LAYING

#### Subject
An integer value from 1-30 identifying the individual performing the experiment.

#### Split
The training / test split created by the original dataset's authors. A character variable with two levels, "train" and "test".

### Measurement Variables
The remainder of the variables use abbreviated names in an attempt to balance clarity with efficiency. The abbreviations used are:
  - "t" to indicate a variable on the "time" domain
  - "f" to indicate "frequency" domain variables
  - "Acc" to indicate a measurement from the phone's accelerometer. 
  - "Gyro" to indicate a measurement from the phone's gyroscope (angular) sensor
  - "Jerk" to indicate the derivative of acceleration, or how fast "the change in speed" is changing
  - "Mag" to indicate the magnitude (size) of the measurement
  - "Mean" to indicate that the mean or average of the measurement was taken
  - "StdDev" to indicate that the standard deviation of the measurement was taken
  - "X", "Y", or "Z" to indicate the axis along which the measurement took place

Per the README.txt file included with the original data:
 - Measurements from the accelerometer ("Acc") are in standard gravity units "g". 
 - Measurements from the gyroscope ("Gyro") are in radians per second. 

The full list of measurement variables includes:
  - tBodyAccMeanX
  - tBodyAccMeanY
  - tBodyAccMeanZ
  - tBodyAccStdDevX
  - tBodyAccStdDevY
  - tBodyAccStdDevZ
  - tGravityAccMeanX
  - tGravityAccMeanY
  - tGravityAccMeanZ
  - tGravityAccStdDevX
  - tGravityAccStdDevY
  - tGravityAccStdDevZ
  - tBodyAccJerkMeanX
  - tBodyAccJerkMeanY
  - tBodyAccJerkMeanZ
  - tBodyAccJerkStdDevX
  - tBodyAccJerkStdDevY
  - tBodyAccJerkStdDevZ
  - tBodyGyroMeanX
  - tBodyGyroMeanY
  - tBodyGyroMeanZ
  - tBodyGyroStdDevX
  - tBodyGyroStdDevY
  - tBodyGyroStdDevZ
  - tBodyGyroJerkMeanX
  - tBodyGyroJerkMeanY
  - tBodyGyroJerkMeanZ
  - tBodyGyroJerkStdDevX
  - tBodyGyroJerkStdDevY
  - tBodyGyroJerkStdDevZ
  - tBodyAccMagMean
  - tBodyAccMagStdDev
  - tGravityAccMagMean
  - tGravityAccMagStdDev
  - tBodyAccJerkMagMean
  - tBodyAccJerkMagStdDev
  - tBodyGyroMagMean
  - tBodyGyroMagStdDev
  - tBodyGyroJerkMagMean
  - tBodyGyroJerkMagStdDev
  - fBodyAccMeanX
  - fBodyAccMeanY
  - fBodyAccMeanZ
  - fBodyAccStdDevX
  - fBodyAccStdDevY
  - fBodyAccStdDevZ
  - fBodyAccJerkMeanX
  - fBodyAccJerkMeanY
  - fBodyAccJerkMeanZ
  - fBodyAccJerkStdDevX
  - fBodyAccJerkStdDevY
  - fBodyAccJerkStdDevZ
  - fBodyGyroMeanX
  - fBodyGyroMeanY
  - fBodyGyroMeanZ
  - fBodyGyroStdDevX
  - fBodyGyroStdDevY
  - fBodyGyroStdDevZ
  - fBodyAccMagMean
  - fBodyAccMagStdDev
  - fBodyAccJerkMagMean
  - fBodyAccJerkMagStdDev
  - fBodyGyroMagMean
  - fBodyGyroMagStdDev
  - fBodyGyroJerkMagMean
  - fBodyGyroJerkMagStdDev
  