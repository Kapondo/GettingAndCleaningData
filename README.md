# GettingAndCleaningData

Course Project: Getting and Cleaning Data

Introduction

The work in this repository contains the Coursera Project of the "Getting and Cleaning data", module which is part of the Data Science specialization. 
The following are the notes on the Project and the data.

Source of dataset https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

You should create one R script called run_analysis.R that does the following.
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Notes

	# Only vaiables containing mean() & std() are used.
	# Requires the plyr & reshape2 packages.
	# Assumes the dataset is unzipped in the current directory.

Constructed using the following:

About the raw data

The features are unlabeled and can be found in the x_test.txt. The activity labels are in the y_test.txt file. The test subjects are in the subject_test.txt file.

The same holds for the training set.

After merging testing and training, labels are added and only columns that have to do with mean and standard deviation are kept.

Training and test datasets are merged using rbind() and converted to a datatable using data.table to make it easier to group operations in the following step
Mean is calculated for all variables for each activity and subject
Variable names are loaded to separate vector and tidied to follow camelCase-convention in some cases.
New names are applied to dataset

Tidy dataset is written to disk.

Lastly, the script will create a tidy data set containing the means of all the columns per test subject and per activity. This tidy dataset will be written to a 
tab-delimited file called tidy.txt, which can also be found in this repository.

About the Code Book

The CodeBook.md file explains the transformations performed and the resulting data and variables.
