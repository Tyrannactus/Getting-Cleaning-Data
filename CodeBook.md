<h1>Code Book</h1>

This code book describes the variables, the data, and any transformations or work that were performed to clean up the data.

<h2>Data Source</h2>

A zip file of the data for the project can be found here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

<h2>Data Set Description</h2>

A detailed description of the data set can be found at the following link:  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

<h2>Variables</h2>

Data from the following files located in the zipped data set were used:
X_test.txt
X_train.txt
y_text.txt
y_train.txt
subject_test.txt
subject_train.txt
features.txt
activity_labels.txt

<h2>Transformations</h2>

The following are the specific transformations performed by the run_analysis.r script.

* Columns in X_test and X_train are given descriptive names based on the corresponding rows in features.txt
* Columns containing mean and standard deviation are selected from from X_text and X_train
* A column is added to y_test and y_train denoting the specific activity for each activity id.
* Descriptive labels are given to the columns in y_test, y_train, subject_test, and subject_train.
* subject_test, y_test, x_test are combined into one data set.
* subject_train, y_train, and x_train are combined into one data set.
* The previous two data sets are merged into a single data set containing a set of tidy test and train data.
* A new data set is created that contains a tidy data set with the average of each variable for each activity and each subject from the previous data set.