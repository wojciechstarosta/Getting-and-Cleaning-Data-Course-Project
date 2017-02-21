#uploading features set and activity labels set
setwd("./UCI HAR Dataset")
features<-read.csv2("./features.txt", header = FALSE, col.names=c("features"))
activity_labels<-read.csv2("./activity_labels.txt", header = FALSE, sep="", col.names=c("activity", "activity.name"))

#uploading training set
setwd("./UCI HAR Dataset/train")
data_train_x<-read.csv2("./X_train.txt", header = FALSE, sep = "", col.names=as.matrix(features))
data_train_y<-read.csv2("./Y_train.txt", header = FALSE, col.names=c("activity.nr"))
subject_train<-read.csv2("./subject_train.txt", header = FALSE, col.names=c("Subject"))

#uploading test set
setwd("./UCI HAR Dataset/test")
data_test_x<-read.csv2("./X_test.txt", header = FALSE, sep = "", col.names=as.matrix(features))
data_test_y<-read.csv2("./Y_test.txt", header = FALSE, col.names=c("activity.nr"))
subject_test<-read.csv2("./subject_test.txt", header = FALSE, col.names=c("Subject"))

#merging test set and training set
data_train<-cbind(data_train_x, data_train_y, subject_train)
data_test<-cbind(data_test_x, data_test_y, subject_test)
data_all<-rbind(data_train, data_test)

#extracting data with mean or std in variable name
data_mean<-data_all[,c(grep("mean", names(data_all)),grep("std", names(data_all)),562,563)]

#adding activity labels
data_merged<-merge(data_mean,activity_labels,by.x="activity.nr", by.y="activity")

#grouping by subject and activity number
library(dplyr)
data_grouped<-group_by(data_merged, Subject, activity.nr)

#changing factors to numbers
data_grouped_numeric <- sapply(data_grouped, is.factor)
data_grouped[data_grouped_numeric] <- lapply(data_grouped[data_grouped_numeric], function(x) as.numeric(as.character(x)))

#summarizing data
tidy_data<-data_grouped[,1:81] %>% summarise_all(mean)
setwd("./UCI HAR Dataset")
write.table(tidy_data, file="./tidy_data.txt", row.names=FALSE)
