# Code Book
For the provided UCI HAR Dataset the following vars are set from run_analysis.R. See the README for additional details.

## Tidy Mean

A data.table named tidy.mean is set with the following columns. All units are maintained from the original data set. A file named tidy.mean.txt is written from run_analysis.R.


| column | description |
| --- | :---:  |
| Subject | Identifier of the subject | 
| Activity | Label of the activity factor |
| MeanSamples | Mean of variables by Subject + Activity provided in tidy |

            

## Tidy

A data.table named tidy is set with the following columns. All units are maintained from the original data set. A file named tidy.txt is written from run_analysis.R.


| Column | Original Name |
| ---------- | ---------- |
| Activity	|       |
| Subject	|       |
TimeBodyAccelerometerMean()X |	tBodyAcc-mean()-X
TimeBodyAccelerometerMean()Y |	tBodyAcc-mean()-Y
TimeBodyAccelerometerMean()Z |	tBodyAcc-mean()-Z
TimeBodyAccelerometerStd()X |	tBodyAcc-std()-X
TimeBodyAccelerometerStd()Y |	tBodyAcc-std()-Y
TimeBodyAcceleratorStd()Z |	tBodyAcc-std()-Z
TimeGravityAcceleratorMean()X |	tGravityAcc-mean()-X
TimeGravityAcceleratorMean()Y |	tGravityAcc-mean()-Y
TimeGravityAcceleratorMean()Z |	tGravityAcc-mean()-Z
TimeGravityAcceleratorStd()X |	tGravityAcc-std()-X
TimeGravityAcceleratorStd()Y |	tGravityAcc-std()-Y
TimeGravityAcceleratorStd()Z |	tGravityAcc-std()-Z
TimeBodyAcceleratorJerkMean()X | tBodyAccJerk-mean()-X
TimeBodyAcceleratorJerkMean()Y	| tBodyAccJerk-mean()-Y
TimeBodyAcceleratorJerkMean()Z	| tBodyAccJerk-mean()-Z
TimeBodyAcceleratorJerkStd()X	| tBodyAccJerk-std()-X
TimeBodyAcceleratorJerkStd()Y	| tBodyAccJerk-std()-Y
TimeBodyAcceleratorJerkStd()Z	| tBodyAccJerk-std()-Z
TimeBodyGyroscopescopeMean()X	| tBodyGyro-mean()-X
TimeBodyGyroscopeMean()Y	| tBodyGyro-mean()-Y
TimeBodyGyroscopeMean()Z	| tBodyGyro-mean()-Z
TimeBodyGyroscopeStd()X	|       tBodyGyro-std()-X
TimeBodyGyroscopeStd()Y	| tBodyGyro-std()-Y
TimeBodyGyroscopeStd()Z	| tBodyGyro-std()-Z
TimeBodyGyroscopeJerkMean()X |	tBodyGyroJerk-mean()-X
TimeBodyGyroscopeJerkMean()Y |	tBodyGyroJerk-mean()-Y
TimeBodyGyroscopeJerkMean()Z |	tBodyGyroJerk-mean()-Z
TimeBodyGyroscopeJerkStd()X	| tBodyGyroJerk-std()-X
TimeBodyGyroscopeJerkStd()Y	| tBodyGyroJerk-std()-Y
TimeBodyGyroscopeJerkStd()Z	| tBodyGyroJerk-std()-Z
TimeBodyAcceleratorMagnitudeMean	| tBodyAccMag-mean()
TimeBodyAcceleratorMagnitudeStd	| tBodyAccMag-std()
TimeGravityAcceleratorMagnitudeMean	| tGravityAccMag-mean()
TimeGravityAcceleratorMagnitudeStd	| tGravityAccMag-std()
TimeBodyAcceleratorJerkMagnitudeMean |	tBodyAccJerkMag-mean()
TimeBodyAcceleratorJerkMagnitudeStd	| tBodyAccJerkMag-std()
TimeBodyGyroscopeMagnitudeMean	| tBodyGyroMag-mean()
TimeBodyGyroscopeMagnitudeStd	| tBodyGyroMag-std()
TimeBodyGyroscopeJerkMagnitudeMean |	tBodyGyroJerkMag-mean()
TimeBodyGyroscopeJerkMagnitudeStd |	tBodyGyroJerkMag-std()
FrequencyBodyAccelerometerMean()X	| fBodyAcc-mean()-X
FrequencyBodyAcceleratorMean()Y	| fBodyAcc-mean()-Y
FrequencyBodyAcceleratorMean()Z	| fBodyAcc-mean()-Z
FrequencyBodyAcceleratorStd()X	| fBodyAcc-std()-X
FrequencyBodyAcceleratorStd()Y	| fBodyAcc-std()-Y
FrequencyBodyAcceleratorStd()Z	| fBodyAcc-std()-Z
FrequencyBodyAcceleratorJerkMean()X	| fBodyAccJerk-mean()-X
FrequencyBodyAcceleratorJerkMean()Y	| fBodyAccJerk-mean()-Y
FrequencyBodyAcceleratorJerkMean()Z	| fBodyAccJerk-mean()-Z
FrequencyBodyAcceleratorJerkStd()X	| fBodyAccJerk-std()-X
FrequencyBodyAcceleratorJerkStd()Y	| fBodyAccJerk-std()-Y
FrequencyBodyAcceleratorJerkStd()Z	| fBodyAccJerk-std()-Z
FrequencyBodyGyroscopeMean()X	| fBodyGyro-mean()-X
FrequencyBodyGyroscopeMean()Y	| fBodyGyro-mean()-Y
FrequencyBodyGyroscopeMean()Z	| fBodyGyro-mean()-Z
FrequencyBodyGyroscopeStd()X	| fBodyGyro-std()-X
FrequencyBodyGyroscopeStd()Y	| fBodyGyro-std()-Y
FrequencyBodyGyroscopeStd()Z	| fBodyGyro-std()-Z
FrequencyBodyAcceleratorMagMean	| fBodyAccMag-mean()
FrequencyBodyAcceleratorMagStd	| fBodyAccMag-std()
FrequencyBodyBodyAcceleratorJerkMagnitudeMean |	fBodyBodyAccJerkMag-mean()
FrequencyBodyBodyAccJerkMagnitudeStd |	fBodyBodyAccJerkMag-std()
FrequencyBodyBodyGyroscopeMagnitudeMean |	fBodyBodyGyroMag-mean()
FrequencyBodyBodyGyroscopeMagnitudeStd	| fBodyBodyGyroMag-std()
FrequencyBodyBodyGyroscopeJerkMagnitudeMean |	fBodyBodyGyroJerkMag-mean()
FrequencyBodyBodyGyroscopeJerkMagnitudeStd |	fBodyBodyGyroJerkMag-std()


## Notes

### Source data is from:

URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
