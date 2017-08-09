
##1. Merges the training and the test sets to create one data set.

##reading activityid and features 
activitytype<-read.table("./assignment4/UCI HAR Dataset/activity_labels.txt")
feature<-read.table("./assignment4/UCI HAR Dataset/features.txt")
colnames(activitytype)<-c("activityid","activitytype")

##reading test and train data
xtest<-read.table("./assignment4/UCI HAR Dataset/test/X_test.txt")
ytest<-read.table("./assignment4/UCI HAR Dataset/test/y_test.txt")
subjecttest<-read.table("./assignment4/UCI HAR Dataset/test/subject_test.txt")

xtrain<-read.table("./assignment4/UCI HAR Dataset/train/X_train.txt")
ytrain<-read.table("./assignment4/UCI HAR Dataset/train/y_train.txt")
subjecttrain<-read.table("./assignment4/UCI HAR Dataset/train/subject_train.txt")

#labelling columns
colnames(xtest)<-feature[,2]
colnames(ytest)<-"activityid"
colnames(subjecttest)<-"subjectid"
colnames(xtrain)<-feature[,2]
colnames(ytrain)<-"activityid"
colnames(subjecttrain)<-"subjectid" 

##combining test and train data
testdat<-cbind(subjecttest,ytest,xtest)
traindat<-cbind(subjecttrain,ytrain,xtrain)
dat<-rbind(testdat,traindat)

##2. Extracts only the measurements on the mean and standard deviation for each measurement.

##creating logical vector indicating only activity, subject, mean and sd variables 
cols<-colnames(dat)
wantedvars<-grepl("activityid|subjectid|mean|std",cols)

##Uses descriptive activity names to name the activities in the data set
##Appropriately labels the data set with descriptive variable names.
##From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.