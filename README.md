Getting-Cleaning-Data
=====================

<h1>run_analysis.R Script</h1>

- This script uses the data set located at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
- The data set must be in folder "UCI_HAR_Dataset" and located in the top level of your working directory in order to run.
- Functions from packages "dplyr" and "plyr" are required to run the script.
- The script loads in the data sets, extracts mean and standard deviation measurements, applies descriptive names and labels to all variables, and merges the data sets.
- The output of this script is a file named "meanData.txt" which contains a tidy data set with the mean of each variable for each activity and each subject.
