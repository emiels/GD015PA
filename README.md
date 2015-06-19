Explanation of transformations in run_analysis.

Unzip the UCI HAR Dataset in your working directory, resulting in a ./UCI HAR Dataset - directory in working dir. This directory should contain two subdirs /train and /test

Description run_analysis starts here

Step 0: initialize and load data
load dplyr-package
load act-labels using column names 'act_id' and 'activity'
load features.txt
load x-dat: use the names in features as column-names while loading x-train and x-test data
load subjects: subj-train and subj-test using 'subject' as column name
load y-data: y-train and y-test using 'act_id' as column name

Step 1: merge train and test data
1a 
join x-train and x-test in x-complete using r-bind (each column is unique)
join subj-train and subj-test in subj-complete using r-bind
join y-train and y-test in y-complete using r-bind
remove obsolete data
1b
combine x-complete, subj-complete and y-complete using cbind (each row is unique)
remove obsolete data

Step 2: select mean() and std()
Only select 66 variables with mean... or std..., plus subject and act-id
(see Codebook.md for explanation why only these variables were selected)
total is created using select-statement from dplyr package, selected columns are subject, activity and each column contain(ing) mean... or std... (contains is used twice in this statement)
  
Step 3: descriptive activity names
Descriptive activity names are added using merge total with act-label joining on 'act_id'
Remove the now obsolete act_id

Step 4: descriptive labels
Most of the labels  are created while importing the data using the column names from features.txt 
(see step 0)
In the provided labels the fBodyBody (dual body) whoch i found confusing is updated to single fBody for the existing occurences using find and replace gsub.

Step 5: create tidy dataset
I choose to create a wide dataset with subject and activity-names as unique identifiers.
For each column the average (mean) is calculated per subject/activity combination.
Using a chain statement the following activities are completed
- group by subject and activity
- calculate the mean per column for each subject/activity combination 
  this is done using the summerize-each function

Export the tidyMeans-wide to tidyMeans-wide.txt using write-table
