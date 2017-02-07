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
