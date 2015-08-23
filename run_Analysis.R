
library(dplyr)

#set working directory
setwd('C:/Users/Jesus/Dropbox/coding/coursera data science/cleaning data/UCI HAR Dataset/')

#1. Read and merge train and test dataset

#train datasets
x_train <- read.table("train/X_train.txt")
y_train<-read.table("train/y_train.txt")
s_train<-read.table("train/subject_train.txt")

#test datasets
x_test <- read.table("test/X_test.txt")
y_test<-read.table("test/y_test.txt")
s_test<-read.table("test/subject_test.txt")

#merge datasets into one
feature_data <- rbind(x_train, x_test)
activity_data <- rbind(y_train, y_test)
subject_data <- rbind(s_train, s_test)

#2. Extracts mean and std dev for each measurement. 
features <- read.table("features.txt")
extracted_features <- grep("-(mean|std)\\(\\)", features[, 2])
extracted_features_names <- features[extracted_features,2]

#subset feature data
feature_data<-feature_data[,extracted_features]
names(feature_data)<-extracted_features_names
#change name of columns for the other datasets
names(subject_data)<-c("subject")
names(activity_data)<- c("activity")

#create our full dataset
fulldata <- cbind(subject_data, activity_data)
fulldata <- cbind(feature_data, fulldata)

#3. Activity labels
a_labels <- read.table("activity_labels.txt")
fulldata <- cbind(feature_data, fulldata)

fulldata$activity<-a_labels[,2][match( fulldata$activity ,a_labels[,1])]

#4. Label columns
names(fulldata)<-gsub("^t", "time", names(fulldata))
names(fulldata)<-gsub("^f", "frequency", names(fulldata))
names(fulldata)<-gsub("Mag", "Magnitude", names(fulldata))
names(fulldata)<-gsub("BodyBody", "Body", names(fulldata))
names(fulldata)<-gsub("Acc", "Accelerometer", names(fulldata))
names(fulldata)<-gsub("Gyro", "Gyroscope", names(fulldata))

#5. output data
fulldata_export<-aggregate(. ~subject + activity, fulldata, mean)
fulldata_export<-fulldata_export[order(fulldata_export$subject,fulldata_export$activity),]
write.table(fulldata_export, file = "tidydata.txt",row.name=FALSE)

