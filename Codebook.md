Codebook for tidyMeans_wide

__How the data was derived from source__
The data in tidyMeans_wide is based on provided data in "UCI HAR dataset.zip"
Data was mutated in following manner (for details of transformations see README.md)
1. load and combine data from test and train-sets
2. subject and activity was linked to rows
3. columns without mean() of std() were removed from datatable
   leaving 66 measurements (plus 'subject' and 'activity', so 68 columns in total)
4. some labels were corrected
5. for each measurement mean was calculated per subject per activity
This results in a wide format dataset with 68 columns and 180 rows: tidyMeans_wide as described below.

Two important remarks
1. Original test and train sets where normalized and bounded [-1,1]
   -> calculated means tidyMeans [-1,1]
2. The original dataset contains more columns with either mean or std in their variable names.
   I __ONLY__ selected the 17 variables named in features_info.txt, 
   8 of those are three dimensional data, so 8*3 (single dimension + 9 = 33 
   with each mean() and std > 
   66 variables in the tidy dataset, plus 2 identifiers (subject and activity)

__Data definition (column name - values = description)__
subject - integer [1..30]  = unique identifier for the subject taking part in experiment      
activity - factor [LAYING, SITTING, STANDING, WALKING, WALKING-DOWNSTAIRS, WALKING-UPSTAIRS]
        = activity type by subject
tBodyAcc.mean...X - numeric [-1,1] = averaged mean body acceleration in X-axis ; time
tBodyAcc.mean...Y - numeric [-1,1] = averaged mean body acceleration in Y-axis ; time
tBodyAcc.mean...Z - numeric [-1,1] = averaged mean body acceleration in Z-axis ; time
tBodyAcc.std...X - numeric [-1,1] = averaged std deviation body acceleration in X-axis ; time
tBodyAcc.std...Y - numeric [-1,1] = averaged std deviation body acceleration in Y-axis ; time
tBodyAcc.std...Z - numeric [-1,1] = averaged std deviation body acceleration in Z-axis ; time
tGravityAcc.mean...X - numeric [-1,1] = averaged mean gravity acceleration in X-axis ; time
tGravityAcc.mean...Y - numeric [-1,1] = averaged mean gravity acceleration in Y-axis ; time
tGravityAcc.mean...Z - numeric [-1,1] = averaged mean gravity acceleration in Z-axis ; time
tGravityAcc.std...X - numeric [-1,1] = averaged std deviation gravity acceleration in X-axis ; time
tGravityAcc.std...Y - numeric [-1,1] = averaged std deviation gravity acceleration in Y-axis ; time
tGravityAcc.std...Z - numeric [-1,1] = averaged std deviation gravity acceleration in Z-axis ; time
tBodyAccJerk.mean...X  - numeric [-1,1] = averaged mean Body Jerk acceleration in X-axis ; time
tBodyAccJerk.mean...Y - numeric [-1,1] = averaged mean Body Jerk acceleration in Y-axis ; time
tBodyAccJerk.mean...Z - numeric [-1,1] = averaged mean Body Jerk acceleration in Z-axis ; time
tBodyAccJerk.std...X - numeric [-1,1] = averaged std dev Body Jerk acceleration in X-axis ; time
tBodyAccJerk.std...Y - numeric [-1,1] = averaged std dev Body Jerk acceleration in Y-axis ; time
tBodyAccJerk.std...Z - numeric [-1,1] = averaged std dev Body Jerk acceleration in Z-axis ; time
tBodyGyro.mean...X - numeric [-1,1] = averaged mean Body Gyro in X-axis ; time
tBodyGyro.mean...Y - numeric [-1,1] = averaged mean Body Gyro in Y-axis ; time
tBodyGyro.mean...Z - numeric [-1,1] = averaged mean Body Gyro in Z-axis ; time
tBodyGyro.std...X - numeric [-1,1] = averaged std dev Body Gyro in X-axis ; time
tBodyGyro.std...Y - numeric [-1,1] = averaged std dev Body Gyro in Y-axis ; time
tBodyGyro.std...Z - numeric [-1,1] = averaged std dev Body Gyro in Z-axis ; time
tBodyGyroJerk.mean...X - numeric [-1,1] = averaged mean Body Gyro Jerk in X-axis ; time
tBodyGyroJerk.mean...Y - numeric [-1,1] = averaged mean Body Gyro Jerk in Y-axis ; time
tBodyGyroJerk.mean...Z - numeric [-1,1] = averaged mean Body Gyro Jerk in Z-axis ; time
tBodyGyroJerk.std...X - numeric [-1,1] = averaged std dev Body Gyro Jerk in X-axis ; time
tBodyGyroJerk.std...Y - numeric [-1,1] = averaged std dev Body Gyro Jerk in Y-axis ; time
tBodyGyroJerk.std...Z - numeric [-1,1] = averaged std dev Body Gyro Jerk in Z-axis ; time
tBodyAccMag.mean... - numeric [-1,1] = averaged mean Body acceleration Magnitude; euclidian norm from XYZ signals ; time
tBodyAccMag.std... - numeric [-1,1] = averaged std dev Body acceleration Magnitude; euclidian XYZ ; time
tGravityAccMag.mean... - numeric [-1,1] = averaged mean Gravity acceleration Magnitude; euclidian XYZ ; time
tGravityAccMag.std... - numeric [-1,1] = averaged std dev Gravity acceleration Magnitude; euclidian XYZ ; time
tBodyAccJerkMag.mean..  - numeric [-1,1] = averaged mean Body acceleration Jerk Magnitude; euclidian norm from XYZ signals ; time
tBodyAccJerkMag.std.. - numeric [-1,1] = averaged std dev Body acceleration Jerk Magnitude; euclidian XYZ ; time
tBodyGyroMag.mean.. - numeric [-1,1] = averaged mean Body Gyro Magnitude; euclidian XYZ ; time
tBodyGyroMag.std.. - numeric [-1,1] = averaged std dev Body Gyro Magnitude; euclidian XYZ ; time
tBodyGyroJerkMag.mean.. - numeric [-1,1] = averaged std dev Body Gyro Jerk Magnitude; euclidian XYZ ; time
tBodyGyroJerkMag.std.. - numeric [-1,1] = averaged std dev Body Gyro Jerk Magnitude; euclidian XYZ ; time
fBodyAcc.mean...X - numeric [-1,1] = averaged mean body acceleration in X-axis ; freq
fBodyAcc.mean...Y - numeric [-1,1] = averaged mean body acceleration in Y-axis ; freq
fBodyAcc.mean...Z - numeric [-1,1] = averaged mean body acceleration in Z-axis ; freq
fBodyAcc.std...X - numeric [-1,1] = averaged std deviation body acceleration in X-axis ; freq
fBodyAcc.std...Y - numeric [-1,1] = averaged std deviation body acceleration in Y-axis ; freq
fBodyAcc.std...Z - numeric [-1,1] = averaged std deviation body acceleration in Z-axis ; freq
fBodyAccJerk.mean...X - numeric [-1,1] = averaged mean Body Jerk acceleration in X-axis ; freq
fBodyAccJerk.mean...Y - numeric [-1,1] = averaged mean Body Jerk acceleration in Y-axis ; freq
fBodyAccJerk.mean...Z - numeric [-1,1] = averaged mean Body Jerk acceleration in Z-axis ; freq
fBodyAccJerk.std...X - numeric [-1,1] = averaged std dev Body Jerk acceleration in X-axis ; freq
fBodyAccJerk.std...Y - numeric [-1,1] = averaged std dev Body Jerk acceleration in Y-axis ; freq
fBodyAccJerk.std...Z - numeric [-1,1] = averaged std dev Body Jerk acceleration in Z-axis ; freq
fBodyGyro.mean...X - numeric [-1,1] = averaged mean Body Gyro in X-axis ; freq
fBodyGyro.mean...Y - numeric [-1,1] = averaged mean Body Gyro in Y-axis ; freq
fBodyGyro.mean...Z - numeric [-1,1] = averaged mean Body Gyro in Z-axis ; freq
fBodyGyro.std...X - numeric [-1,1] = averaged std dev Body Gyro in X-axis ; freq
fBodyGyro.std...Y - numeric [-1,1] = averaged std dev Body Gyro in Y-axis ; freq
fBodyGyro.std...Z - numeric [-1,1] = averaged std dev Body Gyro in Z-axis ; freq
fBodyAccMag.mean.. - numeric [-1,1] = averaged mean Body acceleration Magnitude; euclidian norm from XYZ signals ; freq
fBodyAccMag.std.. - numeric [-1,1] = averaged std dev Body acceleration Magnitude; euclidian XYZ ; freq
fBodyAccJerkMag.mean.. - numeric [-1,1] = averaged mean Body acceleration Jerk Magnitude; euclidian norm from XYZ signals  ; freq
fBodyAccJerkMag.std.. - numeric [-1,1] = averaged std dev Body acceleration Jerk Magnitude; euclidian XYZ ; freq
fBodyGyroMag.mean.. - numeric [-1,1] = averaged mean Body Gyro Magnitude; euclidian XYZ  ; freq
fBodyGyroMag.std.. - numeric [-1,1] = averaged std dev Body Gyro Magnitude; euclidian XYZ  ; freq
fBodyGyroJerkMag.mean.. - numeric [-1,1] = averaged std dev Body Gyro Jerk Magnitude; euclidian XYZ  ; freq
fBodyGyroJerkMag.std.. - numeric [-1,1] = averaged std dev Body Gyro Jerk Magnitude; euclidian XYZ ; freq
