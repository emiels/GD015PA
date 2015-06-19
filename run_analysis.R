# Getting and Cleaning Data - Programming Assignment
# 0.    Load data into R
# 1.	Merges the training and the test sets to create one data set.
# 2.	Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3.	Uses descriptive activity names to name the activities in the data set
# 4.	Appropriately labels the data set with descriptive variable names. 
# 5.	From the data set in step 4, creates a second, independent tidy data set 
#       with the average of each variable for each activity and each subject.

# 0. initialize and load data
library(dplyr)
CrtDir <- getwd()
#  unzip the datafile in your current working dir
#  UCI HAR Dataset should be a subdir of current workingdirectory, 
#  with /train and /test as UCI HAR Dataset's subdirs
setwd("./UCI HAR Dataset")
act_label <-  read.table("activity_labels.txt", header = FALSE, col.names = c("act_id" ,"activity"))
feat <- read.table("features.txt", header = FALSE)
subj_test<- read.table("./test/subject_test.txt", header = FALSE, col.names = "subject")
x_test <- read.table("./test/x_test.txt", header = FALSE, col.names = feat[,2])
y_test <- read.table("./test/y_test.txt", header = FALSE, col.names = "act_id")
subj_train<- read.table("./train/subject_train.txt", header = FALSE, col.names = "subject")
x_train <- read.table("./train/x_train.txt", header = FALSE, col.names = feat[,2])
y_train <- read.table("./train/y_train.txt", header = FALSE, col.names = "act_id")
setwd(CrtDir)

#  step 1: merge train and test
#  1a: append train and test to complete
x_complete<-rbind(x_train, x_test)
subj_complete <- rbind(subj_train, subj_test)
y_complete<-rbind(y_train, y_test)
#  purge used data
rm(x_test)
rm(x_train)
rm(subj_test)
rm(subj_train)
rm(y_test)
rm(y_train)
rm(feat)
# 1b: combine x_complete, subj_complete and y_complete
total<-cbind(x_complete, subj_complete)
total<-cbind(total,y_complete)
# purge used data
rm(x_complete)
rm(y_complete)
rm(subj_complete)

#  step 2: select only mean and standard for each measurement
total<-select(total, subject, act_id, contains(".mean.."), contains(".std.."))

# step 3: descriptive activity names
# additional column with act_name, based on act_id
total = merge(total, act_label, by.x = "act_id", by.y = "act_id", all = TRUE)
#  remove act_id column
total <- select(total, -act_id)

# step 4
#  names are linked while importing
# some frequency measures have bodybody in their description, replace by single body)
names(total)<-gsub("fBodyBody", "fBody", names(total))

# step 5
# group by subject/act
tidyMeans_wide <- total %>% group_by(subject, activity) %>% 
        summarise_each(funs(mean))
write.table(tidyMeans_wide, "./tidyMeans_wide.txt",row.names = FALSE) 
