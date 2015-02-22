library(plyr)

# this is my default workspace
setwd("~/Dropbox/MOOC/DataScienceSpec/CleaningData/CourseProject")

# create data directory
if(!file.exists("./data")){
  dir.create("./data")
}

zipFile <- "./data/HAR.zip"

if(!file.exists(zipFile)){
  # download the HAR Dataset save it into the data directory
  fileUrl <-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 
  download.file(fileUrl,zipFile,method="curl")
  #unzip it
  unzip(zipfile=zipFile,exdir="./data")
}

dataset_path <- file.path("./data","UCI HAR Dataset")
dataset_test_path <- paste(dataset_path,"/test",sep="")
dataset_train_path <- paste(dataset_path,"/train",sep="")


# prepare Features data, merge them and rename cols
feature_test <- read.table(file.path(dataset_test_path,"X_test.txt"),header=FALSE)
feature_train<- read.table(file.path(dataset_train_path,"X_train.txt"),header=FALSE)
feature_merged <- rbind(feature_train, feature_test)
# extract all the variables name from the features.txt file 
feature_names <- read.table(file.path(dataset_path, "features.txt"),head=FALSE)
names(feature_merged)<- feature_names$V2

# prepare Activity data, merge them and rename col
activity_test <- read.table(file.path(dataset_test_path,"Y_test.txt"),header=FALSE)
activity_train <- read.table(file.path(dataset_train_path,"Y_train.txt"),header=FALSE)
activity_merged <- rbind(activity_train,activity_test)
names(activity_merged)<- c("activity")

# prepare Subject data,merge them and rename col
subject_test <- read.table(file.path(dataset_test_path,"subject_test.txt"),header=FALSE)
subject_train <- read.table(file.path(dataset_train_path,"subject_train.txt"),header=FALSE)
subject_merged <- rbind(subject_train,subject_test)
names(subject_merged)<-c("subject")

####### ACTIVITIES #######

# 1. Merges the training and the test sets to create one data set.
first_bind <- cbind(subject_merged,activity_merged)
final_set <- cbind(feature_merged,first_bind) 

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
mean_std_cols_name <- feature_names$V2[c(grep("mean",feature_names$V2),grep("std",feature_names$V2))]
mean_std <- subset(final_set,select=c(as.character(mean_std_cols_name),"subject","activity"))


# 3. Uses descriptive activity names to name the activities in the data set
activity_labels <- read.table(file.path(dataset_path, "activity_labels.txt"),head=FALSE)
final_set$activity <- factor(final_set$activity, levels=activity_labels$V1, labels=activity_labels$V2)

# 4.Appropriately labels the data set with descriptive variable names. 
names(final_set)<-gsub("^f", "frequency", names(final_set))
names(final_set)<-gsub("^t", "time", names(final_set))
names(final_set)<-gsub("Acc", "Accelerometer", names(final_set))
names(final_set)<-gsub("Gyro", "Gyroscope", names(final_set))
names(final_set)<-gsub("Mag", "Magnitude", names(final_set))
names(final_set)<-gsub("BodyBody", "Body", names(final_set))

# 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
final_aggregation <- aggregate(. ~subject + activity, final_set, mean)
final_aggregation<-final_aggregation[order(final_aggregation$subject,final_aggregation$activity),]
write.table(final_aggregation, file = "tidy_dataset.txt",row.name=FALSE)





