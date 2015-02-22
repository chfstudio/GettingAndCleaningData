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