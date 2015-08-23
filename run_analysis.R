## This is a Coursera Project
## Module: Getting and Cleanng Data

## The purpose of this project assignment is to create an R Script 
## called run_analysis.R that does the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation 
##    for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive activity names.
## 5. Creates a second, independent tidy data set with the average of each 
##    variable for each activity and each subject.


## Initial STEP:  Load required packages

library(data.table)


## Read Supporting Metadata
        featureNames <- read.table("UCI HAR Dataset/features.txt")
        activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE)

## Read training data
subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
activityTrain <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)
featuresTrain <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)

## Read test data
subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
activityTest <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)
featuresTest <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)


## Part 1: Merge the training and the test sets to create one data set
	subject <- rbind(subjectTrain, subjectTest)
	activity <- rbind(activityTrain, activityTest)
	features <- rbind(featuresTrain, featuresTest)

## Naming Columns

        colnames(features) <- t(featureNames[2])
        
## Merge the data
        
        colnames(activity) <- "Activity"
        colnames(subject) <- "Subject"
        completeData <- cbind(features,activity,subject)
        
## Part 2: Extracts only the measurements on the mean and standard (sd)
        #  deviation for each measurement
        
columnsWithMeanSTD <- grep(".*Mean.*|.*Std.*", names(completeData), ignore.case=TRUE)

## Adding activity and subject columns to the list and look at the 
## dimension of completeData

	requiredColumns <- c(columnsWithMeanSTD, 562, 563)
	dim(completeData)

## Create extractedData with the selected columns in requiredColumns. 
## Look at the dimension of requiredColumns
	
	extractedData <- completeData[,requiredColumns]
	dim(extractedData)

## Part 3: Use descriptive activity names to name the activities in the data set
extractedData$Activity <- as.character(extractedData$Activity)
	for (i in 1:6){
	        extractedData$Activity[extractedData$Activity == i] <- as.character(activityLabels[i,2])
	       	}

	extractedData$Activity <- as.factor(extractedData$Activity)

## Part 4: Labels the data set with descriptive variable names
## Names of variables in extractedData can be viewed by using names function.
	names(extractedData)
	
## Using acronyms for words used in extractedData
	names(extractedData)<-gsub("Acc", "Accelerometer", names(extractedData))
	names(extractedData)<-gsub("Gyro", "Gyroscope", names(extractedData))
	names(extractedData)<-gsub("BodyBody", "Body", names(extractedData))
	names(extractedData)<-gsub("Mag", "Magnitude", names(extractedData))
	names(extractedData)<-gsub("^t", "Time", names(extractedData))
	names(extractedData)<-gsub("^f", "Frequency", names(extractedData))
	names(extractedData)<-gsub("tBody", "TimeBody", names(extractedData))
	names(extractedData)<-gsub("-mean()", "Mean", names(extractedData), ignore.case = TRUE)
	names(extractedData)<-gsub("-std()", "STD", names(extractedData), ignore.case = TRUE)
	names(extractedData)<-gsub("-freq()", "Frequency", names(extractedData), ignore.case = TRUE)
	names(extractedData)<-gsub("angle", "Angle", names(extractedData))
	names(extractedData)<-gsub("gravity", "Gravity", names(extractedData))

## Full names of the variables in extractedData can be viewed again 
	names(extractedData)

	
## Part 5: From the data set in step 4, creates a second, independent tidy data set with the 
##         average of each variable for each activity and each subject

## Convert subject to a factor variable
	extractedData$Subject <- as.factor(extractedData$Subject)
	extractedData <- data.table(extractedData)

## Create tidyData as a dataset with average for each activity and subject
## with ordered entities and write it into data file named "Tidy.txt" which
## which contains the processed tidy data.
	tidyData <- aggregate(. ~Subject + Activity, extractedData, mean)
	tidyData <- tidyData[order(tidyData$Subject,tidyData$Activity),]
	write.table(tidyData, file = "Tidy.txt", row.names = FALSE)
	
	
	


