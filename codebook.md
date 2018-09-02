# UCI HAR Dataset Summary

### Data and Transformations:
Data was taken from the "Human Activity Recognition Using Smartphones Dataset", from the UCI Machine Learning Repository. Credits for the collection of the data can be found at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data itself, with detailed descriptions of the independent variables (In the files "README.txt and "features_info.txt"), can be found at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The data used for this summary is an aggregation and cleaning of the data contained over several files in this .zip according to the following steps:
- Extract only measurements on the mean and standard deviation of the independent variables.
- Combine data from the training and testing sets.
- Assigned column names based on "features.txt" and attributed to each row its appropriate test subject and activity.
- In the outputted "summary.txt" - calculated the average of each independent variable for each activity and test subject.

### Variables:
Summary.txt contains 180 observations of 68 variables:
- Subject - The test subject performing the trial, numbered 1-30.
- Activity - The activity the test subject performed, taken from a set of 6 activities (Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, and Laying).
- 66 averages of the means and standard deviations of the following variables and their individual X, Y, and Z axis measurements:
tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

A description of the variables, as taken from "features_info.txt":
"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals)."
