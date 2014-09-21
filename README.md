Getting-Cleaning-Data
=====================

<h2>Overview</h2>

You should create one R script called run_analysis.R that does the following. 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

<h2>run_analysis.R Script</h2>

- This script uses the data set located at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
- The data set must be in folder "UCI_HAR_Dataset" and located in the top level of your working directory in order to run.
- Functions from packages "dplyr" and "plyr" are required to run the script.
- The script loads in the data sets, extracts mean and standard deviation measurements, applies descriptive names and labels to all variables, and merges the data sets.
- The output of this script is a file named "meanData.txt" which contains a tidy data set with the mean of each variable for each activity and each subject.
