# Code Book

This document describes the code inside `run_analysis.R`.

Code is splitted (by comments) in sections:

* Loading data
* Manipulating data
* Writing final data


## Loading data

* Reads the column names of data to `features`
* Reads the activity labels to `activity_labels`
* Reads the test `data.frame` to `data_test`
* Reads the training `data.frame` to `data_train`

## Manipulating data

* Merges test data and trainning data to `data_all`
* Extract data with mean or std in variable name to `data_mean`
* Uses `activity_labels` to name levels of Activity
* Groupg by subject and activity number
* Summarize data to `tidy_data`


## Writing final data to txt

Writes `tidy_data` data frame to the ouputfile.

## Identifiers
* subject - The ID of the subject
* activity - The type of activity performed when the corresponding measurements were taken

## Activity Labels

* WALKING (value 1): subject was walking during the test
* WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test
* WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test
* SITTING (value 4): subject was sitting during the test
* STANDING (value 5): subject was standing during the test
* LAYING (value 6): subject was laying down during the test
