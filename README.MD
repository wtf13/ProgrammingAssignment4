### Course Project: Getting and Cleaning Data

## Objective
---------------------------------------------------------------
The purpose of this project is to demonstrate the ability to collect, work with and clean a data set. 


## About the Source Data
--------------------------------------------------------------
Here is the original data source: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


A full description of the raw data may be found on the website where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


Experiments were carried out with a group of 30 volunteers. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The sensor signals (accelerometer and gyroscope) were pre-processed and a vector of features was obtained by calculating variables from the time and frequency domain.

## Preliminary steps to executing the script run_analysis.R 
--------------------------------------------------------------

You will need to download and unzip the source files from the original data files. 
Rename the new unzipped file as "assignment4". 

Set the working directory to be the folder which contains assignment4. 


## Explanation of run_analysis file 
---------------------------------------------------------------
The following description summarises the tasks which we aim to achieve in the run_analysis.R script. 

1. Merge the training and the test sets to create one data set

We load the training and test datasets into the R workspace from X_test.txt. y_test.txt and subject_test.txt are also loaded into the workspace so that we have the variable fields on activityid and subjectid respectively. 
In addition, variable names are also loaded from the features.txt so that we know the variable names of the 561 variables in X_test.txt. Subsequently, we combine the subject id, activity id and computed values by columns and insert column names. 

The training data set was compiled similarly. 

We then bind the training and test data together by rows. 

2. Extract only the measurements on the mean and standard deviation for each measurement.

The grepl function indicates column indices of the variables in which we are interested, hence enabling us to extract only the mean and std variables as well as the activityid and subject id. 

3. Use descriptive activity names to name the activities in the data set
The combined data of training and test data was merged with the activity_labels.txt file according to activity id so that we have the activity names indicated in our dataset. 

4. Appropriately labels the data set with descriptive activity names.

Variable names were cleaned so that they were more descriptive and self-explanatory rather than in abbreviated forms. 

5. Create a second, independent tidy data set with the average of each variable for each activity and each subject.

We calculated means of each variable for each activity and each subject and wrote the new data in a new table tidydat.txt. 

## Additional Information
-----------------------------------------------------------------

You can find additional information about the variables, data and transformations in the CodeBook.MD file.


## Original data source
-----------------------------------------------------------------

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

For more information about this dataset contact: activityrecognition@smartlab.ws


