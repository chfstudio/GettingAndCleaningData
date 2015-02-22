#CodeBook

This document describes the data and transformations used by the *run_analysis.R* script and the definition of variables in *tidy_dataset.txt* result file.

##Dataset Used

The data is obtained from "Human Activity Recognition Using Smartphones Data Set" and represents data collected from the accelerometers from the Samsung Galaxy S smartphone.
For a full description visit the webpage: <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>.


The dataset used could be downloaded from the url:
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip> 


##Input Data Set

The main directory(*UCI HAR Dataset*) is divided in two subdirectories: *test* and *train*. 

*test* contains: 
- "X_test.txt" contains variable "Features" that are intended for testing.
- "y_test.txt" contains the "Activities" corresponding to "X_test.txt".
- "subject_test.txt" contains information on the "Subjects" from whom data is collected.

*train* contains: 
- "X_train.txt" contains variable "Features" that are intended for training.
- "y_train.txt" contains the "Activities" corresponding to "X_train.txt".
- "subject_train.txt" contains information on the "Subjects" from whom data is collected.

The main directory contains also two useful text files:

- "activity_labels.txt" contains metadata on the different types of activities.
- "features.txt" contains the name of the features in the data sets.

The other files in the main directory arent' used in this project.


##Transformations
First of all, a unique dataframe was created from the test and train data. 
Infact, features, subject and activity variables (from X_*, y_* and subject_* files) were merged from the test and the train directories to create *final_set* dataframe.  
After a second dataset was created that contains only the measurements on the mean and standard deviation for each measurement. Finally, for the *final_set* data,the activity values were changed with the descriptive name and, after, several the columns name were changed in a more descriptive form. This rename transformation was:

- change with "frequency" the colsname that starts with "f" 
- change with "time" the colsname that starts with "t" 
- change with "Accelerometer" the colsname that starts with "Acc" 
- change with "Gyroscope" the colsname that starts with "Gyro" 
- change with "Magnitude" the colsname that starts with "Mag" 
- change with "Body" the colsname that starts with "BodyBody" 



##Output Data Set

The output data "tidy_dataset.txt" is a a space-delimited value file. The header line contains the names of the variables. It contains the mean and standard deviation values of the data contained in the input files. The header is restructued in an understandable manner. 

## Variables

Name	 	 | Original Name | 
------------ | ------------- | 
subject|subject|
activity|activity|
timeBodyAccelerometer-mean()-X|tBodyBodyAcc-mean()-X|
timeBodyAccelerometer-mean()-Y|tBodyBodyAcc-mean()-Y|
timeBodyAccelerometer-mean()-Z|tBodyBodyAcc-mean()-Z|
timeBodyAccelerometer-std()-X|tBodyBodyAcc-std()-X|
timeBodyAccelerometer-std()-Y|tBodyBodyAcc-std()-Y|
timeBodyAccelerometer-std()-Z|tBodyBodyAcc-std()-Z|
timeBodyAccelerometer-mad()-X|tBodyBodyAcc-mad()-X|
timeBodyAccelerometer-mad()-Y|tBodyBodyAcc-mad()-Y|
timeBodyAccelerometer-mad()-Z|tBodyBodyAcc-mad()-Z|
timeBodyAccelerometer-max()-X|tBodyBodyAcc-max()-X|
timeBodyAccelerometer-max()-Y|tBodyBodyAcc-max()-Y|
timeBodyAccelerometer-max()-Z|tBodyBodyAcc-max()-Z|
timeBodyAccelerometer-min()-X|tBodyBodyAcc-min()-X|
timeBodyAccelerometer-min()-Y|tBodyBodyAcc-min()-Y|
timeBodyAccelerometer-min()-Z|tBodyBodyAcc-min()-Z|
timeBodyAccelerometer-sma()|tBodyBodyAcc-sma()|
timeBodyAccelerometer-energy()-X|tBodyBodyAcc-energy()-X|
timeBodyAccelerometer-energy()-Y|tBodyBodyAcc-energy()-Y|
timeBodyAccelerometer-energy()-Z|tBodyBodyAcc-energy()-Z|
timeBodyAccelerometer-iqr()-X|tBodyBodyAcc-iqr()-X|
timeBodyAccelerometer-iqr()-Y|tBodyBodyAcc-iqr()-Y|
timeBodyAccelerometer-iqr()-Z|tBodyBodyAcc-iqr()-Z|
timeBodyAccelerometer-entropy()-X|tBodyBodyAcc-entropy()-X|
timeBodyAccelerometer-entropy()-Y|tBodyBodyAcc-entropy()-Y|
timeBodyAccelerometer-entropy()-Z|tBodyBodyAcc-entropy()-Z|
timeBodyAccelerometer-arCoeff()-X,1|tBodyBodyAcc-arCoeff()-X,1|
timeBodyAccelerometer-arCoeff()-X,2|tBodyBodyAcc-arCoeff()-X,2|
timeBodyAccelerometer-arCoeff()-X,3|tBodyBodyAcc-arCoeff()-X,3|
timeBodyAccelerometer-arCoeff()-X,4|tBodyBodyAcc-arCoeff()-X,4|
timeBodyAccelerometer-arCoeff()-Y,1|tBodyBodyAcc-arCoeff()-Y,1|
timeBodyAccelerometer-arCoeff()-Y,2|tBodyBodyAcc-arCoeff()-Y,2|
timeBodyAccelerometer-arCoeff()-Y,3|tBodyBodyAcc-arCoeff()-Y,3|
timeBodyAccelerometer-arCoeff()-Y,4|tBodyBodyAcc-arCoeff()-Y,4|
timeBodyAccelerometer-arCoeff()-Z,1|tBodyBodyAcc-arCoeff()-Z,1|
timeBodyAccelerometer-arCoeff()-Z,2|tBodyBodyAcc-arCoeff()-Z,2|
timeBodyAccelerometer-arCoeff()-Z,3|tBodyBodyAcc-arCoeff()-Z,3|
timeBodyAccelerometer-arCoeff()-Z,4|tBodyBodyAcc-arCoeff()-Z,4|
timeBodyAccelerometer-correlation()-X,Y|tBodyBodyAcc-correlation()-X,Y|
timeBodyAccelerometer-correlation()-X,Z|tBodyBodyAcc-correlation()-X,Z|
timeBodyAccelerometer-correlation()-Y,Z|tBodyBodyAcc-correlation()-Y,Z|
timeGravityAccelerometer-mean()-X|tGravityAcc-mean()-X|
timeGravityAccelerometer-mean()-Y|tGravityAcc-mean()-Y|
timeGravityAccelerometer-mean()-Z|tGravityAcc-mean()-Z|
timeGravityAccelerometer-std()-X|tGravityAcc-std()-X|
timeGravityAccelerometer-std()-Y|tGravityAcc-std()-Y|
timeGravityAccelerometer-std()-Z|tGravityAcc-std()-Z|
timeGravityAccelerometer-mad()-X|tGravityAcc-mad()-X|
timeGravityAccelerometer-mad()-Y|tGravityAcc-mad()-Y|
timeGravityAccelerometer-mad()-Z|tGravityAcc-mad()-Z|
timeGravityAccelerometer-max()-X|tGravityAcc-max()-X|
timeGravityAccelerometer-max()-Y|tGravityAcc-max()-Y|
timeGravityAccelerometer-max()-Z|tGravityAcc-max()-Z|
timeGravityAccelerometer-min()-X|tGravityAcc-min()-X|
timeGravityAccelerometer-min()-Y|tGravityAcc-min()-Y|
timeGravityAccelerometer-min()-Z|tGravityAcc-min()-Z|
timeGravityAccelerometer-sma()|tGravityAcc-sma()|
timeGravityAccelerometer-energy()-X|tGravityAcc-energy()-X|
timeGravityAccelerometer-energy()-Y|tGravityAcc-energy()-Y|
timeGravityAccelerometer-energy()-Z|tGravityAcc-energy()-Z|
timeGravityAccelerometer-iqr()-X|tGravityAcc-iqr()-X|
timeGravityAccelerometer-iqr()-Y|tGravityAcc-iqr()-Y|
timeGravityAccelerometer-iqr()-Z|tGravityAcc-iqr()-Z|
timeGravityAccelerometer-entropy()-X|tGravityAcc-entropy()-X|
timeGravityAccelerometer-entropy()-Y|tGravityAcc-entropy()-Y|
timeGravityAccelerometer-entropy()-Z|tGravityAcc-entropy()-Z|
timeGravityAccelerometer-arCoeff()-X,1|tGravityAcc-arCoeff()-X,1|
timeGravityAccelerometer-arCoeff()-X,2|tGravityAcc-arCoeff()-X,2|
timeGravityAccelerometer-arCoeff()-X,3|tGravityAcc-arCoeff()-X,3|
timeGravityAccelerometer-arCoeff()-X,4|tGravityAcc-arCoeff()-X,4|
timeGravityAccelerometer-arCoeff()-Y,1|tGravityAcc-arCoeff()-Y,1|
timeGravityAccelerometer-arCoeff()-Y,2|tGravityAcc-arCoeff()-Y,2|
timeGravityAccelerometer-arCoeff()-Y,3|tGravityAcc-arCoeff()-Y,3|
timeGravityAccelerometer-arCoeff()-Y,4|tGravityAcc-arCoeff()-Y,4|
timeGravityAccelerometer-arCoeff()-Z,1|tGravityAcc-arCoeff()-Z,1|
timeGravityAccelerometer-arCoeff()-Z,2|tGravityAcc-arCoeff()-Z,2|
timeGravityAccelerometer-arCoeff()-Z,3|tGravityAcc-arCoeff()-Z,3|
timeGravityAccelerometer-arCoeff()-Z,4|tGravityAcc-arCoeff()-Z,4|
timeGravityAccelerometer-correlation()-X,Y|tGravityAcc-correlation()-X,Y|
timeGravityAccelerometer-correlation()-X,Z|tGravityAcc-correlation()-X,Z|
timeGravityAccelerometer-correlation()-Y,Z|tGravityAcc-correlation()-Y,Z|
timeBodyAccelerometerJerk-mean()-X|tBodyBodyAccJerk-mean()-X|
timeBodyAccelerometerJerk-mean()-Y|tBodyBodyAccJerk-mean()-Y|
timeBodyAccelerometerJerk-mean()-Z|tBodyBodyAccJerk-mean()-Z|
timeBodyAccelerometerJerk-std()-X|tBodyBodyAccJerk-std()-X|
timeBodyAccelerometerJerk-std()-Y|tBodyBodyAccJerk-std()-Y|
timeBodyAccelerometerJerk-std()-Z|tBodyBodyAccJerk-std()-Z|
timeBodyAccelerometerJerk-mad()-X|tBodyBodyAccJerk-mad()-X|
timeBodyAccelerometerJerk-mad()-Y|tBodyBodyAccJerk-mad()-Y|
timeBodyAccelerometerJerk-mad()-Z|tBodyBodyAccJerk-mad()-Z|
timeBodyAccelerometerJerk-max()-X|tBodyBodyAccJerk-max()-X|
timeBodyAccelerometerJerk-max()-Y|tBodyBodyAccJerk-max()-Y|
timeBodyAccelerometerJerk-max()-Z|tBodyBodyAccJerk-max()-Z|
timeBodyAccelerometerJerk-min()-X|tBodyBodyAccJerk-min()-X|
timeBodyAccelerometerJerk-min()-Y|tBodyBodyAccJerk-min()-Y|
timeBodyAccelerometerJerk-min()-Z|tBodyBodyAccJerk-min()-Z|
timeBodyAccelerometerJerk-sma()|tBodyBodyAccJerk-sma()|
timeBodyAccelerometerJerk-energy()-X|tBodyBodyAccJerk-energy()-X|
timeBodyAccelerometerJerk-energy()-Y|tBodyBodyAccJerk-energy()-Y|
timeBodyAccelerometerJerk-energy()-Z|tBodyBodyAccJerk-energy()-Z|
timeBodyAccelerometerJerk-iqr()-X|tBodyBodyAccJerk-iqr()-X|
timeBodyAccelerometerJerk-iqr()-Y|tBodyBodyAccJerk-iqr()-Y|
timeBodyAccelerometerJerk-iqr()-Z|tBodyBodyAccJerk-iqr()-Z|
timeBodyAccelerometerJerk-entropy()-X|tBodyBodyAccJerk-entropy()-X|
timeBodyAccelerometerJerk-entropy()-Y|tBodyBodyAccJerk-entropy()-Y|
timeBodyAccelerometerJerk-entropy()-Z|tBodyBodyAccJerk-entropy()-Z|
timeBodyAccelerometerJerk-arCoeff()-X,1|tBodyBodyAccJerk-arCoeff()-X,1|
timeBodyAccelerometerJerk-arCoeff()-X,2|tBodyBodyAccJerk-arCoeff()-X,2|
timeBodyAccelerometerJerk-arCoeff()-X,3|tBodyBodyAccJerk-arCoeff()-X,3|
timeBodyAccelerometerJerk-arCoeff()-X,4|tBodyBodyAccJerk-arCoeff()-X,4|
timeBodyAccelerometerJerk-arCoeff()-Y,1|tBodyBodyAccJerk-arCoeff()-Y,1|
timeBodyAccelerometerJerk-arCoeff()-Y,2|tBodyBodyAccJerk-arCoeff()-Y,2|
timeBodyAccelerometerJerk-arCoeff()-Y,3|tBodyBodyAccJerk-arCoeff()-Y,3|
timeBodyAccelerometerJerk-arCoeff()-Y,4|tBodyBodyAccJerk-arCoeff()-Y,4|
timeBodyAccelerometerJerk-arCoeff()-Z,1|tBodyBodyAccJerk-arCoeff()-Z,1|
timeBodyAccelerometerJerk-arCoeff()-Z,2|tBodyBodyAccJerk-arCoeff()-Z,2|
timeBodyAccelerometerJerk-arCoeff()-Z,3|tBodyBodyAccJerk-arCoeff()-Z,3|
timeBodyAccelerometerJerk-arCoeff()-Z,4|tBodyBodyAccJerk-arCoeff()-Z,4|
timeBodyAccelerometerJerk-correlation()-X,Y|tBodyBodyAccJerk-correlation()-X,Y|
timeBodyAccelerometerJerk-correlation()-X,Z|tBodyBodyAccJerk-correlation()-X,Z|
timeBodyAccelerometerJerk-correlation()-Y,Z|tBodyBodyAccJerk-correlation()-Y,Z|
timeBodyGyroscope-mean()-X|tBodyBodyGyro-mean()-X|
timeBodyGyroscope-mean()-Y|tBodyBodyGyro-mean()-Y|
timeBodyGyroscope-mean()-Z|tBodyBodyGyro-mean()-Z|
timeBodyGyroscope-std()-X|tBodyBodyGyro-std()-X|
timeBodyGyroscope-std()-Y|tBodyBodyGyro-std()-Y|
timeBodyGyroscope-std()-Z|tBodyBodyGyro-std()-Z|
timeBodyGyroscope-mad()-X|tBodyBodyGyro-mad()-X|
timeBodyGyroscope-mad()-Y|tBodyBodyGyro-mad()-Y|
timeBodyGyroscope-mad()-Z|tBodyBodyGyro-mad()-Z|
timeBodyGyroscope-max()-X|tBodyBodyGyro-max()-X|
timeBodyGyroscope-max()-Y|tBodyBodyGyro-max()-Y|
timeBodyGyroscope-max()-Z|tBodyBodyGyro-max()-Z|
timeBodyGyroscope-min()-X|tBodyBodyGyro-min()-X|
timeBodyGyroscope-min()-Y|tBodyBodyGyro-min()-Y|
timeBodyGyroscope-min()-Z|tBodyBodyGyro-min()-Z|
timeBodyGyroscope-sma()|tBodyBodyGyro-sma()|
timeBodyGyroscope-energy()-X|tBodyBodyGyro-energy()-X|
timeBodyGyroscope-energy()-Y|tBodyBodyGyro-energy()-Y|
timeBodyGyroscope-energy()-Z|tBodyBodyGyro-energy()-Z|
timeBodyGyroscope-iqr()-X|tBodyBodyGyro-iqr()-X|
timeBodyGyroscope-iqr()-Y|tBodyBodyGyro-iqr()-Y|
timeBodyGyroscope-iqr()-Z|tBodyBodyGyro-iqr()-Z|
timeBodyGyroscope-entropy()-X|tBodyBodyGyro-entropy()-X|
timeBodyGyroscope-entropy()-Y|tBodyBodyGyro-entropy()-Y|
timeBodyGyroscope-entropy()-Z|tBodyBodyGyro-entropy()-Z|
timeBodyGyroscope-arCoeff()-X,1|tBodyBodyGyro-arCoeff()-X,1|
timeBodyGyroscope-arCoeff()-X,2|tBodyBodyGyro-arCoeff()-X,2|
timeBodyGyroscope-arCoeff()-X,3|tBodyBodyGyro-arCoeff()-X,3|
timeBodyGyroscope-arCoeff()-X,4|tBodyBodyGyro-arCoeff()-X,4|
timeBodyGyroscope-arCoeff()-Y,1|tBodyBodyGyro-arCoeff()-Y,1|
timeBodyGyroscope-arCoeff()-Y,2|tBodyBodyGyro-arCoeff()-Y,2|
timeBodyGyroscope-arCoeff()-Y,3|tBodyBodyGyro-arCoeff()-Y,3|
timeBodyGyroscope-arCoeff()-Y,4|tBodyBodyGyro-arCoeff()-Y,4|
timeBodyGyroscope-arCoeff()-Z,1|tBodyBodyGyro-arCoeff()-Z,1|
timeBodyGyroscope-arCoeff()-Z,2|tBodyBodyGyro-arCoeff()-Z,2|
timeBodyGyroscope-arCoeff()-Z,3|tBodyBodyGyro-arCoeff()-Z,3|
timeBodyGyroscope-arCoeff()-Z,4|tBodyBodyGyro-arCoeff()-Z,4|
timeBodyGyroscope-correlation()-X,Y|tBodyBodyGyro-correlation()-X,Y|
timeBodyGyroscope-correlation()-X,Z|tBodyBodyGyro-correlation()-X,Z|
timeBodyGyroscope-correlation()-Y,Z|tBodyBodyGyro-correlation()-Y,Z|
timeBodyGyroscopeJerk-mean()-X|tBodyBodyGyroJerk-mean()-X|
timeBodyGyroscopeJerk-mean()-Y|tBodyBodyGyroJerk-mean()-Y|
timeBodyGyroscopeJerk-mean()-Z|tBodyBodyGyroJerk-mean()-Z|
timeBodyGyroscopeJerk-std()-X|tBodyBodyGyroJerk-std()-X|
timeBodyGyroscopeJerk-std()-Y|tBodyBodyGyroJerk-std()-Y|
timeBodyGyroscopeJerk-std()-Z|tBodyBodyGyroJerk-std()-Z|
timeBodyGyroscopeJerk-mad()-X|tBodyBodyGyroJerk-mad()-X|
timeBodyGyroscopeJerk-mad()-Y|tBodyBodyGyroJerk-mad()-Y|
timeBodyGyroscopeJerk-mad()-Z|tBodyBodyGyroJerk-mad()-Z|
timeBodyGyroscopeJerk-max()-X|tBodyBodyGyroJerk-max()-X|
timeBodyGyroscopeJerk-max()-Y|tBodyBodyGyroJerk-max()-Y|
timeBodyGyroscopeJerk-max()-Z|tBodyBodyGyroJerk-max()-Z|
timeBodyGyroscopeJerk-min()-X|tBodyBodyGyroJerk-min()-X|
timeBodyGyroscopeJerk-min()-Y|tBodyBodyGyroJerk-min()-Y|
timeBodyGyroscopeJerk-min()-Z|tBodyBodyGyroJerk-min()-Z|
timeBodyGyroscopeJerk-sma()|tBodyBodyGyroJerk-sma()|
timeBodyGyroscopeJerk-energy()-X|tBodyBodyGyroJerk-energy()-X|
timeBodyGyroscopeJerk-energy()-Y|tBodyBodyGyroJerk-energy()-Y|
timeBodyGyroscopeJerk-energy()-Z|tBodyBodyGyroJerk-energy()-Z|
timeBodyGyroscopeJerk-iqr()-X|tBodyBodyGyroJerk-iqr()-X|
timeBodyGyroscopeJerk-iqr()-Y|tBodyBodyGyroJerk-iqr()-Y|
timeBodyGyroscopeJerk-iqr()-Z|tBodyBodyGyroJerk-iqr()-Z|
timeBodyGyroscopeJerk-entropy()-X|tBodyBodyGyroJerk-entropy()-X|
timeBodyGyroscopeJerk-entropy()-Y|tBodyBodyGyroJerk-entropy()-Y|
timeBodyGyroscopeJerk-entropy()-Z|tBodyBodyGyroJerk-entropy()-Z|
timeBodyGyroscopeJerk-arCoeff()-X,1|tBodyBodyGyroJerk-arCoeff()-X,1|
timeBodyGyroscopeJerk-arCoeff()-X,2|tBodyBodyGyroJerk-arCoeff()-X,2|
timeBodyGyroscopeJerk-arCoeff()-X,3|tBodyBodyGyroJerk-arCoeff()-X,3|
timeBodyGyroscopeJerk-arCoeff()-X,4|tBodyBodyGyroJerk-arCoeff()-X,4|
timeBodyGyroscopeJerk-arCoeff()-Y,1|tBodyBodyGyroJerk-arCoeff()-Y,1|
timeBodyGyroscopeJerk-arCoeff()-Y,2|tBodyBodyGyroJerk-arCoeff()-Y,2|
timeBodyGyroscopeJerk-arCoeff()-Y,3|tBodyBodyGyroJerk-arCoeff()-Y,3|
timeBodyGyroscopeJerk-arCoeff()-Y,4|tBodyBodyGyroJerk-arCoeff()-Y,4|
timeBodyGyroscopeJerk-arCoeff()-Z,1|tBodyBodyGyroJerk-arCoeff()-Z,1|
timeBodyGyroscopeJerk-arCoeff()-Z,2|tBodyBodyGyroJerk-arCoeff()-Z,2|
timeBodyGyroscopeJerk-arCoeff()-Z,3|tBodyBodyGyroJerk-arCoeff()-Z,3|
timeBodyGyroscopeJerk-arCoeff()-Z,4|tBodyBodyGyroJerk-arCoeff()-Z,4|
timeBodyGyroscopeJerk-correlation()-X,Y|tBodyBodyGyroJerk-correlation()-X,Y|
timeBodyGyroscopeJerk-correlation()-X,Z|tBodyBodyGyroJerk-correlation()-X,Z|
timeBodyGyroscopeJerk-correlation()-Y,Z|tBodyBodyGyroJerk-correlation()-Y,Z|
timeBodyAccelerometerMagnitude-mean()|tBodyBodyAccMag-mean()|
timeBodyAccelerometerMagnitude-std()|tBodyBodyAccMag-std()|
timeBodyAccelerometerMagnitude-mad()|tBodyBodyAccMag-mad()|
timeBodyAccelerometerMagnitude-max()|tBodyBodyAccMag-max()|
timeBodyAccelerometerMagnitude-min()|tBodyBodyAccMag-min()|
timeBodyAccelerometerMagnitude-sma()|tBodyBodyAccMag-sma()|
timeBodyAccelerometerMagnitude-energy()|tBodyBodyAccMag-energy()|
timeBodyAccelerometerMagnitude-iqr()|tBodyBodyAccMag-iqr()|
timeBodyAccelerometerMagnitude-entropy()|tBodyBodyAccMag-entropy()|
timeBodyAccelerometerMagnitude-arCoeff()1|tBodyBodyAccMag-arCoeff()1|
timeBodyAccelerometerMagnitude-arCoeff()2|tBodyBodyAccMag-arCoeff()2|
timeBodyAccelerometerMagnitude-arCoeff()3|tBodyBodyAccMag-arCoeff()3|
timeBodyAccelerometerMagnitude-arCoeff()4|tBodyBodyAccMag-arCoeff()4|
timeGravityAccelerometerMagnitude-mean()|tGravityAccMag-mean()|
timeGravityAccelerometerMagnitude-std()|tGravityAccMag-std()|
timeGravityAccelerometerMagnitude-mad()|tGravityAccMag-mad()|
timeGravityAccelerometerMagnitude-max()|tGravityAccMag-max()|
timeGravityAccelerometerMagnitude-min()|tGravityAccMag-min()|
timeGravityAccelerometerMagnitude-sma()|tGravityAccMag-sma()|
timeGravityAccelerometerMagnitude-energy()|tGravityAccMag-energy()|
timeGravityAccelerometerMagnitude-iqr()|tGravityAccMag-iqr()|
timeGravityAccelerometerMagnitude-entropy()|tGravityAccMag-entropy()|
timeGravityAccelerometerMagnitude-arCoeff()1|tGravityAccMag-arCoeff()1|
timeGravityAccelerometerMagnitude-arCoeff()2|tGravityAccMag-arCoeff()2|
timeGravityAccelerometerMagnitude-arCoeff()3|tGravityAccMag-arCoeff()3|
timeGravityAccelerometerMagnitude-arCoeff()4|tGravityAccMag-arCoeff()4|
timeBodyAccelerometerJerkMagnitude-mean()|tBodyBodyAccJerkMag-mean()|
timeBodyAccelerometerJerkMagnitude-std()|tBodyBodyAccJerkMag-std()|
timeBodyAccelerometerJerkMagnitude-mad()|tBodyBodyAccJerkMag-mad()|
timeBodyAccelerometerJerkMagnitude-max()|tBodyBodyAccJerkMag-max()|
timeBodyAccelerometerJerkMagnitude-min()|tBodyBodyAccJerkMag-min()|
timeBodyAccelerometerJerkMagnitude-sma()|tBodyBodyAccJerkMag-sma()|
timeBodyAccelerometerJerkMagnitude-energy()|tBodyBodyAccJerkMag-energy()|
timeBodyAccelerometerJerkMagnitude-iqr()|tBodyBodyAccJerkMag-iqr()|
timeBodyAccelerometerJerkMagnitude-entropy()|tBodyBodyAccJerkMag-entropy()|
timeBodyAccelerometerJerkMagnitude-arCoeff()1|tBodyBodyAccJerkMag-arCoeff()1|
timeBodyAccelerometerJerkMagnitude-arCoeff()2|tBodyBodyAccJerkMag-arCoeff()2|
timeBodyAccelerometerJerkMagnitude-arCoeff()3|tBodyBodyAccJerkMag-arCoeff()3|
timeBodyAccelerometerJerkMagnitude-arCoeff()4|tBodyBodyAccJerkMag-arCoeff()4|
timeBodyGyroscopeMagnitude-mean()|tBodyBodyGyroMag-mean()|
timeBodyGyroscopeMagnitude-std()|tBodyBodyGyroMag-std()|
timeBodyGyroscopeMagnitude-mad()|tBodyBodyGyroMag-mad()|
timeBodyGyroscopeMagnitude-max()|tBodyBodyGyroMag-max()|
timeBodyGyroscopeMagnitude-min()|tBodyBodyGyroMag-min()|
timeBodyGyroscopeMagnitude-sma()|tBodyBodyGyroMag-sma()|
timeBodyGyroscopeMagnitude-energy()|tBodyBodyGyroMag-energy()|
timeBodyGyroscopeMagnitude-iqr()|tBodyBodyGyroMag-iqr()|
timeBodyGyroscopeMagnitude-entropy()|tBodyBodyGyroMag-entropy()|
timeBodyGyroscopeMagnitude-arCoeff()1|tBodyBodyGyroMag-arCoeff()1|
timeBodyGyroscopeMagnitude-arCoeff()2|tBodyBodyGyroMag-arCoeff()2|
timeBodyGyroscopeMagnitude-arCoeff()3|tBodyBodyGyroMag-arCoeff()3|
timeBodyGyroscopeMagnitude-arCoeff()4|tBodyBodyGyroMag-arCoeff()4|
timeBodyGyroscopeJerkMagnitude-mean()|tBodyBodyGyroJerkMag-mean()|
timeBodyGyroscopeJerkMagnitude-std()|tBodyBodyGyroJerkMag-std()|
timeBodyGyroscopeJerkMagnitude-mad()|tBodyBodyGyroJerkMag-mad()|
timeBodyGyroscopeJerkMagnitude-max()|tBodyBodyGyroJerkMag-max()|
timeBodyGyroscopeJerkMagnitude-min()|tBodyBodyGyroJerkMag-min()|
timeBodyGyroscopeJerkMagnitude-sma()|tBodyBodyGyroJerkMag-sma()|
timeBodyGyroscopeJerkMagnitude-energy()|tBodyBodyGyroJerkMag-energy()|
timeBodyGyroscopeJerkMagnitude-iqr()|tBodyBodyGyroJerkMag-iqr()|
timeBodyGyroscopeJerkMagnitude-entropy()|tBodyBodyGyroJerkMag-entropy()|
timeBodyGyroscopeJerkMagnitude-arCoeff()1|tBodyBodyGyroJerkMag-arCoeff()1|
timeBodyGyroscopeJerkMagnitude-arCoeff()2|tBodyBodyGyroJerkMag-arCoeff()2|
timeBodyGyroscopeJerkMagnitude-arCoeff()3|tBodyBodyGyroJerkMag-arCoeff()3|
timeBodyGyroscopeJerkMagnitude-arCoeff()4|tBodyBodyGyroJerkMag-arCoeff()4|
frequencyBodyAccelerometer-mean()-X|fBodyBodyAcc-mean()-X|
frequencyBodyAccelerometer-mean()-Y|fBodyBodyAcc-mean()-Y|
frequencyBodyAccelerometer-mean()-Z|fBodyBodyAcc-mean()-Z|
frequencyBodyAccelerometer-std()-X|fBodyBodyAcc-std()-X|
frequencyBodyAccelerometer-std()-Y|fBodyBodyAcc-std()-Y|
frequencyBodyAccelerometer-std()-Z|fBodyBodyAcc-std()-Z|
frequencyBodyAccelerometer-mad()-X|fBodyBodyAcc-mad()-X|
frequencyBodyAccelerometer-mad()-Y|fBodyBodyAcc-mad()-Y|
frequencyBodyAccelerometer-mad()-Z|fBodyBodyAcc-mad()-Z|
frequencyBodyAccelerometer-max()-X|fBodyBodyAcc-max()-X|
frequencyBodyAccelerometer-max()-Y|fBodyBodyAcc-max()-Y|
frequencyBodyAccelerometer-max()-Z|fBodyBodyAcc-max()-Z|
frequencyBodyAccelerometer-min()-X|fBodyBodyAcc-min()-X|
frequencyBodyAccelerometer-min()-Y|fBodyBodyAcc-min()-Y|
frequencyBodyAccelerometer-min()-Z|fBodyBodyAcc-min()-Z|
frequencyBodyAccelerometer-sma()|fBodyBodyAcc-sma()|
frequencyBodyAccelerometer-energy()-X|fBodyBodyAcc-energy()-X|
frequencyBodyAccelerometer-energy()-Y|fBodyBodyAcc-energy()-Y|
frequencyBodyAccelerometer-energy()-Z|fBodyBodyAcc-energy()-Z|
frequencyBodyAccelerometer-iqr()-X|fBodyBodyAcc-iqr()-X|
frequencyBodyAccelerometer-iqr()-Y|fBodyBodyAcc-iqr()-Y|
frequencyBodyAccelerometer-iqr()-Z|fBodyBodyAcc-iqr()-Z|
frequencyBodyAccelerometer-entropy()-X|fBodyBodyAcc-entropy()-X|
frequencyBodyAccelerometer-entropy()-Y|fBodyBodyAcc-entropy()-Y|
frequencyBodyAccelerometer-entropy()-Z|fBodyBodyAcc-entropy()-Z|
frequencyBodyAccelerometer-maxInds-X|fBodyBodyAcc-maxInds-X|
frequencyBodyAccelerometer-maxInds-Y|fBodyBodyAcc-maxInds-Y|
frequencyBodyAccelerometer-maxInds-Z|fBodyBodyAcc-maxInds-Z|
frequencyBodyAccelerometer-meanFreq()-X|fBodyBodyAcc-meanFreq()-X|
frequencyBodyAccelerometer-meanFreq()-Y|fBodyBodyAcc-meanFreq()-Y|
frequencyBodyAccelerometer-meanFreq()-Z|fBodyBodyAcc-meanFreq()-Z|
frequencyBodyAccelerometer-skewness()-X|fBodyBodyAcc-skewness()-X|
frequencyBodyAccelerometer-kurtosis()-X|fBodyBodyAcc-kurtosis()-X|
frequencyBodyAccelerometer-skewness()-Y|fBodyBodyAcc-skewness()-Y|
frequencyBodyAccelerometer-kurtosis()-Y|fBodyBodyAcc-kurtosis()-Y|
frequencyBodyAccelerometer-skewness()-Z|fBodyBodyAcc-skewness()-Z|
frequencyBodyAccelerometer-kurtosis()-Z|fBodyBodyAcc-kurtosis()-Z|
frequencyBodyAccelerometer-bandsEnergy()-1,8|fBodyBodyAcc-bandsEnergy()-1,8|
frequencyBodyAccelerometer-bandsEnergy()-9,16|fBodyBodyAcc-bandsEnergy()-9,16|
frequencyBodyAccelerometer-bandsEnergy()-17,24|fBodyBodyAcc-bandsEnergy()-17,24|
frequencyBodyAccelerometer-bandsEnergy()-25,32|fBodyBodyAcc-bandsEnergy()-25,32|
frequencyBodyAccelerometer-bandsEnergy()-33,40|fBodyBodyAcc-bandsEnergy()-33,40|
frequencyBodyAccelerometer-bandsEnergy()-41,48|fBodyBodyAcc-bandsEnergy()-41,48|
frequencyBodyAccelerometer-bandsEnergy()-49,56|fBodyBodyAcc-bandsEnergy()-49,56|
frequencyBodyAccelerometer-bandsEnergy()-57,64|fBodyBodyAcc-bandsEnergy()-57,64|
frequencyBodyAccelerometer-bandsEnergy()-1,16|fBodyBodyAcc-bandsEnergy()-1,16|
frequencyBodyAccelerometer-bandsEnergy()-17,32|fBodyBodyAcc-bandsEnergy()-17,32|
frequencyBodyAccelerometer-bandsEnergy()-33,48|fBodyBodyAcc-bandsEnergy()-33,48|
frequencyBodyAccelerometer-bandsEnergy()-49,64|fBodyBodyAcc-bandsEnergy()-49,64|
frequencyBodyAccelerometer-bandsEnergy()-1,24|fBodyBodyAcc-bandsEnergy()-1,24|
frequencyBodyAccelerometer-bandsEnergy()-25,48|fBodyBodyAcc-bandsEnergy()-25,48|
frequencyBodyAccelerometerJerk-mean()-X|fBodyBodyAccJerk-mean()-X|
frequencyBodyAccelerometerJerk-mean()-Y|fBodyBodyAccJerk-mean()-Y|
frequencyBodyAccelerometerJerk-mean()-Z|fBodyBodyAccJerk-mean()-Z|
frequencyBodyAccelerometerJerk-std()-X|fBodyBodyAccJerk-std()-X|
frequencyBodyAccelerometerJerk-std()-Y|fBodyBodyAccJerk-std()-Y|
frequencyBodyAccelerometerJerk-std()-Z|fBodyBodyAccJerk-std()-Z|
frequencyBodyAccelerometerJerk-mad()-X|fBodyBodyAccJerk-mad()-X|
frequencyBodyAccelerometerJerk-mad()-Y|fBodyBodyAccJerk-mad()-Y|
frequencyBodyAccelerometerJerk-mad()-Z|fBodyBodyAccJerk-mad()-Z|
frequencyBodyAccelerometerJerk-max()-X|fBodyBodyAccJerk-max()-X|
frequencyBodyAccelerometerJerk-max()-Y|fBodyBodyAccJerk-max()-Y|
frequencyBodyAccelerometerJerk-max()-Z|fBodyBodyAccJerk-max()-Z|
frequencyBodyAccelerometerJerk-min()-X|fBodyBodyAccJerk-min()-X|
frequencyBodyAccelerometerJerk-min()-Y|fBodyBodyAccJerk-min()-Y|
frequencyBodyAccelerometerJerk-min()-Z|fBodyBodyAccJerk-min()-Z|
frequencyBodyAccelerometerJerk-sma()|fBodyBodyAccJerk-sma()|
frequencyBodyAccelerometerJerk-energy()-X|fBodyBodyAccJerk-energy()-X|
frequencyBodyAccelerometerJerk-energy()-Y|fBodyBodyAccJerk-energy()-Y|
frequencyBodyAccelerometerJerk-energy()-Z|fBodyBodyAccJerk-energy()-Z|
frequencyBodyAccelerometerJerk-iqr()-X|fBodyBodyAccJerk-iqr()-X|
frequencyBodyAccelerometerJerk-iqr()-Y|fBodyBodyAccJerk-iqr()-Y|
frequencyBodyAccelerometerJerk-iqr()-Z|fBodyBodyAccJerk-iqr()-Z|
frequencyBodyAccelerometerJerk-entropy()-X|fBodyBodyAccJerk-entropy()-X|
frequencyBodyAccelerometerJerk-entropy()-Y|fBodyBodyAccJerk-entropy()-Y|
frequencyBodyAccelerometerJerk-entropy()-Z|fBodyBodyAccJerk-entropy()-Z|
frequencyBodyAccelerometerJerk-maxInds-X|fBodyBodyAccJerk-maxInds-X|
frequencyBodyAccelerometerJerk-maxInds-Y|fBodyBodyAccJerk-maxInds-Y|
frequencyBodyAccelerometerJerk-maxInds-Z|fBodyBodyAccJerk-maxInds-Z|
frequencyBodyAccelerometerJerk-meanFreq()-X|fBodyBodyAccJerk-meanFreq()-X|
frequencyBodyAccelerometerJerk-meanFreq()-Y|fBodyBodyAccJerk-meanFreq()-Y|
frequencyBodyAccelerometerJerk-meanFreq()-Z|fBodyBodyAccJerk-meanFreq()-Z|
frequencyBodyAccelerometerJerk-skewness()-X|fBodyBodyAccJerk-skewness()-X|
frequencyBodyAccelerometerJerk-kurtosis()-X|fBodyBodyAccJerk-kurtosis()-X|
frequencyBodyAccelerometerJerk-skewness()-Y|fBodyBodyAccJerk-skewness()-Y|
frequencyBodyAccelerometerJerk-kurtosis()-Y|fBodyBodyAccJerk-kurtosis()-Y|
frequencyBodyAccelerometerJerk-skewness()-Z|fBodyBodyAccJerk-skewness()-Z|
frequencyBodyAccelerometerJerk-kurtosis()-Z|fBodyBodyAccJerk-kurtosis()-Z|
frequencyBodyAccelerometerJerk-bandsEnergy()-1,8|fBodyBodyAccJerk-bandsEnergy()-1,8|
frequencyBodyAccelerometerJerk-bandsEnergy()-9,16|fBodyBodyAccJerk-bandsEnergy()-9,16|
frequencyBodyAccelerometerJerk-bandsEnergy()-17,24|fBodyBodyAccJerk-bandsEnergy()-17,24|
frequencyBodyAccelerometerJerk-bandsEnergy()-25,32|fBodyBodyAccJerk-bandsEnergy()-25,32|
frequencyBodyAccelerometerJerk-bandsEnergy()-33,40|fBodyBodyAccJerk-bandsEnergy()-33,40|
frequencyBodyAccelerometerJerk-bandsEnergy()-41,48|fBodyBodyAccJerk-bandsEnergy()-41,48|
frequencyBodyAccelerometerJerk-bandsEnergy()-49,56|fBodyBodyAccJerk-bandsEnergy()-49,56|
frequencyBodyAccelerometerJerk-bandsEnergy()-57,64|fBodyBodyAccJerk-bandsEnergy()-57,64|
frequencyBodyAccelerometerJerk-bandsEnergy()-1,16|fBodyBodyAccJerk-bandsEnergy()-1,16|
frequencyBodyAccelerometerJerk-bandsEnergy()-17,32|fBodyBodyAccJerk-bandsEnergy()-17,32|
frequencyBodyAccelerometerJerk-bandsEnergy()-33,48|fBodyBodyAccJerk-bandsEnergy()-33,48|
frequencyBodyAccelerometerJerk-bandsEnergy()-49,64|fBodyBodyAccJerk-bandsEnergy()-49,64|
frequencyBodyAccelerometerJerk-bandsEnergy()-1,24|fBodyBodyAccJerk-bandsEnergy()-1,24|
frequencyBodyAccelerometerJerk-bandsEnergy()-25,48|fBodyBodyAccJerk-bandsEnergy()-25,48|
frequencyBodyGyroscope-mean()-X|fBodyBodyGyro-mean()-X|
frequencyBodyGyroscope-mean()-Y|fBodyBodyGyro-mean()-Y|
frequencyBodyGyroscope-mean()-Z|fBodyBodyGyro-mean()-Z|
frequencyBodyGyroscope-std()-X|fBodyBodyGyro-std()-X|
frequencyBodyGyroscope-std()-Y|fBodyBodyGyro-std()-Y|
frequencyBodyGyroscope-std()-Z|fBodyBodyGyro-std()-Z|
frequencyBodyGyroscope-mad()-X|fBodyBodyGyro-mad()-X|
frequencyBodyGyroscope-mad()-Y|fBodyBodyGyro-mad()-Y|
frequencyBodyGyroscope-mad()-Z|fBodyBodyGyro-mad()-Z|
frequencyBodyGyroscope-max()-X|fBodyBodyGyro-max()-X|
frequencyBodyGyroscope-max()-Y|fBodyBodyGyro-max()-Y|
frequencyBodyGyroscope-max()-Z|fBodyBodyGyro-max()-Z|
frequencyBodyGyroscope-min()-X|fBodyBodyGyro-min()-X|
frequencyBodyGyroscope-min()-Y|fBodyBodyGyro-min()-Y|
frequencyBodyGyroscope-min()-Z|fBodyBodyGyro-min()-Z|
frequencyBodyGyroscope-sma()|fBodyBodyGyro-sma()|
frequencyBodyGyroscope-energy()-X|fBodyBodyGyro-energy()-X|
frequencyBodyGyroscope-energy()-Y|fBodyBodyGyro-energy()-Y|
frequencyBodyGyroscope-energy()-Z|fBodyBodyGyro-energy()-Z|
frequencyBodyGyroscope-iqr()-X|fBodyBodyGyro-iqr()-X|
frequencyBodyGyroscope-iqr()-Y|fBodyBodyGyro-iqr()-Y|
frequencyBodyGyroscope-iqr()-Z|fBodyBodyGyro-iqr()-Z|
frequencyBodyGyroscope-entropy()-X|fBodyBodyGyro-entropy()-X|
frequencyBodyGyroscope-entropy()-Y|fBodyBodyGyro-entropy()-Y|
frequencyBodyGyroscope-entropy()-Z|fBodyBodyGyro-entropy()-Z|
frequencyBodyGyroscope-maxInds-X|fBodyBodyGyro-maxInds-X|
frequencyBodyGyroscope-maxInds-Y|fBodyBodyGyro-maxInds-Y|
frequencyBodyGyroscope-maxInds-Z|fBodyBodyGyro-maxInds-Z|
frequencyBodyGyroscope-meanFreq()-X|fBodyBodyGyro-meanFreq()-X|
frequencyBodyGyroscope-meanFreq()-Y|fBodyBodyGyro-meanFreq()-Y|
frequencyBodyGyroscope-meanFreq()-Z|fBodyBodyGyro-meanFreq()-Z|
frequencyBodyGyroscope-skewness()-X|fBodyBodyGyro-skewness()-X|
frequencyBodyGyroscope-kurtosis()-X|fBodyBodyGyro-kurtosis()-X|
frequencyBodyGyroscope-skewness()-Y|fBodyBodyGyro-skewness()-Y|
frequencyBodyGyroscope-kurtosis()-Y|fBodyBodyGyro-kurtosis()-Y|
frequencyBodyGyroscope-skewness()-Z|fBodyBodyGyro-skewness()-Z|
frequencyBodyGyroscope-kurtosis()-Z|fBodyBodyGyro-kurtosis()-Z|
frequencyBodyGyroscope-bandsEnergy()-1,8|fBodyBodyGyro-bandsEnergy()-1,8|
frequencyBodyGyroscope-bandsEnergy()-9,16|fBodyBodyGyro-bandsEnergy()-9,16|
frequencyBodyGyroscope-bandsEnergy()-17,24|fBodyBodyGyro-bandsEnergy()-17,24|
frequencyBodyGyroscope-bandsEnergy()-25,32|fBodyBodyGyro-bandsEnergy()-25,32|
frequencyBodyGyroscope-bandsEnergy()-33,40|fBodyBodyGyro-bandsEnergy()-33,40|
frequencyBodyGyroscope-bandsEnergy()-41,48|fBodyBodyGyro-bandsEnergy()-41,48|
frequencyBodyGyroscope-bandsEnergy()-49,56|fBodyBodyGyro-bandsEnergy()-49,56|
frequencyBodyGyroscope-bandsEnergy()-57,64|fBodyBodyGyro-bandsEnergy()-57,64|
frequencyBodyGyroscope-bandsEnergy()-1,16|fBodyBodyGyro-bandsEnergy()-1,16|
frequencyBodyGyroscope-bandsEnergy()-17,32|fBodyBodyGyro-bandsEnergy()-17,32|
frequencyBodyGyroscope-bandsEnergy()-33,48|fBodyBodyGyro-bandsEnergy()-33,48|
frequencyBodyGyroscope-bandsEnergy()-49,64|fBodyBodyGyro-bandsEnergy()-49,64|
frequencyBodyGyroscope-bandsEnergy()-1,24|fBodyBodyGyro-bandsEnergy()-1,24|
frequencyBodyGyroscope-bandsEnergy()-25,48|fBodyBodyGyro-bandsEnergy()-25,48|
frequencyBodyAccelerometerMagnitude-mean()|fBodyBodyAccMag-mean()|
frequencyBodyAccelerometerMagnitude-std()|fBodyBodyAccMag-std()|
frequencyBodyAccelerometerMagnitude-mad()|fBodyBodyAccMag-mad()|
frequencyBodyAccelerometerMagnitude-max()|fBodyBodyAccMag-max()|
frequencyBodyAccelerometerMagnitude-min()|fBodyBodyAccMag-min()|
frequencyBodyAccelerometerMagnitude-sma()|fBodyBodyAccMag-sma()|
frequencyBodyAccelerometerMagnitude-energy()|fBodyBodyAccMag-energy()|
frequencyBodyAccelerometerMagnitude-iqr()|fBodyBodyAccMag-iqr()|
frequencyBodyAccelerometerMagnitude-entropy()|fBodyBodyAccMag-entropy()|
frequencyBodyAccelerometerMagnitude-maxInds|fBodyBodyAccMag-maxInds|
frequencyBodyAccelerometerMagnitude-meanFreq()|fBodyBodyAccMag-meanFreq()|
frequencyBodyAccelerometerMagnitude-skewness()|fBodyBodyAccMag-skewness()|
frequencyBodyAccelerometerMagnitude-kurtosis()|fBodyBodyAccMag-kurtosis()|
frequencyBodyAccelerometerJerkMagnitude-mean()|fBodyBodyAccJerkMag-mean()|
frequencyBodyAccelerometerJerkMagnitude-std()|fBodyBodyAccJerkMag-std()|
frequencyBodyAccelerometerJerkMagnitude-mad()|fBodyBodyAccJerkMag-mad()|
frequencyBodyAccelerometerJerkMagnitude-max()|fBodyBodyAccJerkMag-max()|
frequencyBodyAccelerometerJerkMagnitude-min()|fBodyBodyAccJerkMag-min()|
frequencyBodyAccelerometerJerkMagnitude-sma()|fBodyBodyAccJerkMag-sma()|
frequencyBodyAccelerometerJerkMagnitude-energy()|fBodyBodyAccJerkMag-energy()|
frequencyBodyAccelerometerJerkMagnitude-iqr()|fBodyBodyAccJerkMag-iqr()|
frequencyBodyAccelerometerJerkMagnitude-entropy()|fBodyBodyAccJerkMag-entropy()|
frequencyBodyAccelerometerJerkMagnitude-maxInds|fBodyBodyAccJerkMag-maxInds|
frequencyBodyAccelerometerJerkMagnitude-meanFreq()|fBodyBodyAccJerkMag-meanFreq()|
frequencyBodyAccelerometerJerkMagnitude-skewness()|fBodyBodyAccJerkMag-skewness()|
frequencyBodyAccelerometerJerkMagnitude-kurtosis()|fBodyBodyAccJerkMag-kurtosis()|
frequencyBodyGyroscopeMagnitude-mean()|fBodyBodyGyroMag-mean()|
frequencyBodyGyroscopeMagnitude-std()|fBodyBodyGyroMag-std()|
frequencyBodyGyroscopeMagnitude-mad()|fBodyBodyGyroMag-mad()|
frequencyBodyGyroscopeMagnitude-max()|fBodyBodyGyroMag-max()|
frequencyBodyGyroscopeMagnitude-min()|fBodyBodyGyroMag-min()|
frequencyBodyGyroscopeMagnitude-sma()|fBodyBodyGyroMag-sma()|
frequencyBodyGyroscopeMagnitude-energy()|fBodyBodyGyroMag-energy()|
frequencyBodyGyroscopeMagnitude-iqr()|fBodyBodyGyroMag-iqr()|
frequencyBodyGyroscopeMagnitude-entropy()|fBodyBodyGyroMag-entropy()|
frequencyBodyGyroscopeMagnitude-maxInds|fBodyBodyGyroMag-maxInds|
frequencyBodyGyroscopeMagnitude-meanFreq()|fBodyBodyGyroMag-meanFreq()|
frequencyBodyGyroscopeMagnitude-skewness()|fBodyBodyGyroMag-skewness()|
frequencyBodyGyroscopeMagnitude-kurtosis()|fBodyBodyGyroMag-kurtosis()|
frequencyBodyGyroscopeJerkMagnitude-mean()|fBodyBodyGyroJerkMag-mean()|
frequencyBodyGyroscopeJerkMagnitude-std()|fBodyBodyGyroJerkMag-std()|
frequencyBodyGyroscopeJerkMagnitude-mad()|fBodyBodyGyroJerkMag-mad()|
frequencyBodyGyroscopeJerkMagnitude-max()|fBodyBodyGyroJerkMag-max()|
frequencyBodyGyroscopeJerkMagnitude-min()|fBodyBodyGyroJerkMag-min()|
frequencyBodyGyroscopeJerkMagnitude-sma()|fBodyBodyGyroJerkMag-sma()|
frequencyBodyGyroscopeJerkMagnitude-energy()|fBodyBodyGyroJerkMag-energy()|
frequencyBodyGyroscopeJerkMagnitude-iqr()|fBodyBodyGyroJerkMag-iqr()|
frequencyBodyGyroscopeJerkMagnitude-entropy()|fBodyBodyGyroJerkMag-entropy()|
frequencyBodyGyroscopeJerkMagnitude-maxInds|fBodyBodyGyroJerkMag-maxInds|
frequencyBodyGyroscopeJerkMagnitude-meanFreq()|fBodyBodyGyroJerkMag-meanFreq()|
frequencyBodyGyroscopeJerkMagnitude-skewness()|fBodyBodyGyroJerkMag-skewness()|
frequencyBodyGyroscopeJerkMagnitude-kurtosis()|fBodyBodyGyroJerkMag-kurtosis()|
angle(tBodyAccelerometerMean,gravity)|angle(tBodyBodyAccMean,gravity)|
angle(tBodyAccelerometerJerkMean),gravityMean)|angle(tBodyBodyAccJerkMean),gravityMean)|
angle(tBodyGyroscopeMean,gravityMean)|angle(tBodyBodyGyroMean,gravityMean)|
angle(tBodyGyroscopeJerkMean,gravityMean)|angle(tBodyBodyGyroJerkMean,gravityMean)|
angle(X,gravityMean)|angle(X,gravityMean)|
angle(Y,gravityMean)|angle(Y,gravityMean)|
angle(Z,gravityMean)|angle(Z,gravityMean)|
