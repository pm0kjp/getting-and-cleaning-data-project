library(dplyr)

# set up the directory where our data will live, and put the files there
dir.create("project_data")
setwd("project_data/")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "data.zip", method="curl")
unzip("data.zip")
setwd("UCI HAR Dataset/")

# Load up some pertinent data frames
test.X<-read.table("test/X_test.txt")
train.X<-read.table("train/X_train.txt")
test.y<-read.table("test/y_test.txt")
train.y<-read.table("train/y_train.txt")
test.subject<-read.table("test/subject_test.txt")
train.subject<-read.table("train/subject_train.txt")

# Combine Test and Train data
test_train.X<-rbind(test.X,train.X)
test_train.y<-rbind(test.y,train.y)
test_train.subject<-rbind(test.subject,train.subject)

# The column names for X are not helpful.  We get the vector of names and change X to use those.
col_names<-read.table("features.txt")
colnames(test_train.X)<-col_names$V2

# We create a data frame that only has mean() and std() columns.
means_sd_only<-test_train.X[,c(grep("-mean\\(\\)",colnames(test_train.X)), grep("-std\\(\\)",colnames(test_train.X)))]

# We refactor our activities using words instead of their numeric counterparts
test_train.y[test_train.y==1]<-"Walking"
test_train.y[test_train.y==2]<-"Walking_Upstairs"
test_train.y[test_train.y==3]<-"Walking_Downstairs"
test_train.y[test_train.y==4]<-"Sitting"
test_train.y[test_train.y==5]<-"Standing"
test_train.y[test_train.y==6]<-"Laying"

# We change the column name of our "y" and "subject" data frames
colnames(test_train.y)<-"Activity"
colnames(test_train.subject)<-"Subject"

# Create a combined data set with subject, activity, and metrics -- mean and sd only.
combined<-cbind(test_train.subject,test_train.y,means_sd_only)

# Create  melted datasets for our tidy dataset creation. 
activityDataMelt<-melt(combined,id="Activity", measure.vars=colnames(combined[,3:68]))
subjectDataMelt<-melt(combined,id="Subject", measure.vars=colnames(combined[,3:68]))
tidy_activity<-dcast(activityDataMelt, Activity ~ variable,mean)
tidy_subject<-dcast(subjectDataMelt, Subject ~ variable,mean)
colnames(tidy_subject)[1]<-"Activity or Subject"
colnames(tidy_activity)[1]<-"Activity or Subject"
tidy<-rbind(tidy_activity,tidy_subject)
colnames(tidy)[2:67]<-paste("Mean of", colnames(tidy)[2:67])