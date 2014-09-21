library("dplyr") #Required for select(), mutate()
library("plyr") #Required for ddply()

#Create one R script called run_analysis.R that does the following:
#1. Merges the training and the test sets to create one data set.
#2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#3. Uses descriptive activity names to name the activities in the data set
#4. Appropriately labels the data set with descriptive variable names. 
#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#Load data sets
xTest <- read.table("UCI_HAR_Dataset/test/X_test.txt")
xTrain <- read.table("UCI_HAR_Dataset/train/X_train.txt")
yTest <- read.table("UCI_HAR_Dataset/test/y_test.txt")
yTrain <- read.table("UCI_HAR_Dataset/train/y_train.txt")
subjectTest <- read.table("UCI_HAR_Dataset/test/subject_test.txt")
subjectTrain <- read.table("UCI_HAR_Dataset/train/subject_train.txt")
features <- read.table("UCI_HAR_Dataset/features.txt")
activityLabels <- read.table("UCI_HAR_Dataset/activity_labels.txt")

#Extract only the measurements on the mean and standard deviation for each measurement in xTest.
names(xTest) = features[,2] #Give xTest descriptive variable names.
xTest <- select(xTest, contains("mean"), contains("std"))

yTest <- mutate(yTest, Activity = activityLabels[yTest[,1],2]) # Add activity label to yTest
names(yTest) = c("ActivityID", "Activity") #Give yTest descriptive variable names.
names(subjectTest) = "SubjectID" #Give subjectTest descriptive variable names.
testData <- cbind(subjectTest, yTest, xTest) #Combine test data.

#Extract only the measurements on the mean and standard deviation for each measurement in xTrain.
names(xTrain) = features[,2] #Give xTrain descriptive variable names.
xTrain <- select(xTrain, contains("mean"), contains("std"))

yTrain <- mutate(yTrain, Activity = activityLabels[yTrain[,1],2]) # Add activity label to yTrain
names(yTrain) = c("ActivityID", "Activity") #Give yTrain descriptive variable names.
names(subjectTrain) = "SubjectID" #Give subjectTrain descriptive variable names.
trainData <- cbind(subjectTrain, yTrain, xTrain) #Combine train data.

#Merge the training and the test sets to create one data set.
combinedData <- rbind(testData, trainData)

#Create a second, independent tidy data set with the average of each variable for each activity and each subject.
meanData <- ddply(combinedData, .(ActivityID, SubjectID), numcolwise(mean))

#Write meanData to file.
write.table(meanData, file = "meanData.txt", row.name=FALSE)