# Coursera-Getting-and-Cleaning-Data-Course-Project
Getting and cleaning data course project

The script is divided in 4 parts.

  1. The first section load the different datasets and makes so we can merge them later
  2. This part extracts only the measurements on the mean and standard deviation for each measurement. 
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names. 
  5. This section reates a  tidy data set with the average of each variable for each activity and each subject.

These are the variables used:


    tBodyAccMeanX
    tBodyAccMeanY
    tBodyAccMeanZ
    tBodyAccStdX
    tBodyAccStdY
    tBodyAccStdZ
    tGravityAccMeanX
    tGravityAccMeanY
    tGravityAccMeanZ
    tGravityAccStdX
    tGravityAccStdY
    tGravityAccStdZ
    tBodyAccJerkMeanX
    tBodyAccJerkMeanY
    tBodyAccJerkMeanZ
    tBodyAccJerkStdX
    tBodyAccJerkStdY
    tBodyAccJerkStdZ
    tBodyGyroMeanX
    tBodyGyroMeanY
    tBodyGyroMeanZ
    tBodyGyroStdX
    tBodyGyroStdY
    tBodyGyroStdZ
    tBodyGyroJerkMeanX
    tBodyGyroJerkMeanY
    tBodyGyroJerkMeanZ
    tBodyGyroJerkStdX
    tBodyGyroJerkStdY
    tBodyGyroJerkStdZ
    tBodyAccMagMean
    tBodyAccMagStd
    tGravityAccMagMean
    tGravityAccMagStd
    tBodyAccJerkMagMean
    tBodyAccJerkMagStd
    tBodyGyroMagMean
    tBodyGyroMagStd
    tBodyGyroJerkMagMean
    tBodyGyroJerkMagStd
    fBodyAccMeanX
    fBodyAccMeanY
    fBodyAccMeanZ
    fBodyAccStdX
    fBodyAccStdY
    fBodyAccStdZ
    fBodyAccMeanFreqX
    fBodyAccMeanFreqY
    fBodyAccMeanFreqZ
    fBodyAccJerkMeanX
    fBodyAccJerkMeanY
    fBodyAccJerkMeanZ
    fBodyAccJerkStdX
    fBodyAccJerkStdY
    fBodyAccJerkStdZ
    fBodyAccJerkMeanFreqX
    fBodyAccJerkMeanFreqY
    fBodyAccJerkMeanFreqZ
    fBodyGyroMeanX
    fBodyGyroMeanY
    fBodyGyroMeanZ
    fBodyGyroStdX
    fBodyGyroStdY
    fBodyGyroStdZ
    fBodyGyroMeanFreqX
    fBodyGyroMeanFreqY
    fBodyGyroMeanFreqZ
    fBodyAccMagMean
    fBodyAccMagStd
    fBodyAccMagMeanFreq
    fBodyBodyAccJerkMagMean
    fBodyBodyAccJerkMagStd
    fBodyBodyAccJerkMagMeanFreq
    fBodyBodyGyroMagMean
    fBodyBodyGyroMagStd
    fBodyBodyGyroMagMeanFreq
    fBodyBodyGyroJerkMagMean
    fBodyBodyGyroJerkMagStd
    fBodyBodyGyroJerkMagMeanFreq

Activity Labels

    WALKING (value 1): subject was walking during the test
    WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test
    WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test
    SITTING (value 4): subject was sitting during the test
    STANDING (value 5): subject was standing during the test
    LAYING (value 6): subject was laying down during the test
