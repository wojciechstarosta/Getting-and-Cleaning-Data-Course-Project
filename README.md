# Getting-and-Cleaning-Data-Course-Project

## Overview
This project serves to demonstrate the collection and cleaning of a tidy data set that can be used for subsequent
analysis. A full description of the data used in this project can be found at [The UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

[The source data for this project can be found here.](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

##The R script, run_analysis.R, does the following:

* Load the activity and feature info
* Loads both the training and test datasets, keeping only those columns which reflect a mean or standard deviation
* Loads the activity and subject data for each dataset, and merges those columns with the dataset
* Merges the two datasets
* Creates a tidy dataset that consists of the average (mean) value of each variable for each subject and activity pair.
* The end result is shown in the file tidy_data.txt.

## Additional Information
You can find additional information about the variables, data and transformations in the CodeBook.MD file.
