#
# Course 3 Final Project, J. Flipse, 2 Feb 2018
#

# Source files:
URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

td = getwd()                                    # Extract to working directory (td)
tf = tempfile(tmpdir=td, fileext=".zip")        # Create placeholder file
download.file(URL, tf)                          # Download ZIP file to td

library(plyr)
library(dplyr)
library(data.table)

# Get the zip files name & path (zipF), then unzip all to the working directory
zipF <- list.files(path = td, pattern = "*.zip", full.names = TRUE)
ldply(.data = zipF, .fun = unzip, exdir = td)

######## Load GENERAL Data ########
dirPath <- "UCI HAR Dataset"    # path under the working directory

# Activity Labels - Links the class labels with their activity name (5 X 1)
dtActivities <- read.table(file.path(td, dirPath, "activity_labels.txt"))
colnames(dtActivities) <- c("activityId", "activityName")

# Features - List of all features (768 X 1)
dtFeatures <- read.table(file.path(td, dirPath, "features.txt"), as.is = TRUE)

######## Load TEST Data: 2946 rows in each file ########
dirPath <- "UCI HAR Dataset/test"      # path under the working directory
dtTestData <- read.table(file.path(td, dirPath, "X_test.txt"))
dtTestActvities <- read.table(file.path(td, dirPath, "y_test.txt"))
dtTestSubjects <- read.table(file.path(td, dirPath, "subject_test.txt"))

######## Load TRAINING Data: 2946 rows in each file ########
dirPath <- "UCI HAR Dataset/train"      # path under the working directory
dtTrainData <- read.table(file.path(td, dirPath, "X_train.txt"))
dtTrainActvities <- read.table(file.path(td, dirPath, "y_train.txt"))
dtTrainSubjects <- read.table(file.path(td, dirPath, "subject_train.txt"))

#
# 1. Combine the data
#
dtData <- rbind(cbind(dtTestSubjects, dtTestActvities, dtTestData),
                cbind(dtTrainSubjects, dtTrainActvities, dtTrainData))

# Apply names to columns, the first two manually, the reminder using the column names listed in the 
# corresponding order in dtFeatures
colnames(dtData) <- c("subjectId", "activityId", dtFeatures[,2])

#
# 2. Keep only data related to std deviations and means.  Use grep on column names looking for 
#       any that allude to "activity", "subject", "mean(", or "std(".  Include "(" following "mean" and 
#       "std" as there are names with "mean" and "std" potentially burried in the name that do not
#       represent the data we want to retain.  We only want those followed immediately by "(".
#
dtData <- dtData[, grep("activity|subject|mean\\(|std\\(", colnames(dtData))]

#
# 3. Use descriptive activity names to name the activities in the data set.  Most names are already set,
#       so all that is left is to add the activity name corresponding to activityId to the dataset.
#
dtData <- left_join(dtData,dtActivities)        # joins on the common column "activityId"

#
# 4. Appropriately label the data set with descriptive variable names.  Spiff up the names to be
#       more intuitively understood.
#
cNames <- names(dtData)

# Swap out names in the cName stiring, then reaply them
cNames <- gsub("^f","frequency", cNames)
cNames <- gsub("mean","Mean", cNames)
cNames <- gsub("std","StdDeviation", cNames)
cNames <- gsub("Acc","Accelerometer", cNames)
cNames <- gsub("Mag","Magnitude", cNames)
cNames <- gsub("^t","time", cNames)

# Clean up symbols
cNames <- gsub("-","", cNames)
cNames <- gsub("\\(","", cNames)
cNames <- gsub("\\)","", cNames)

# Reapply the new names
colnames(dtData) <- cNames

#
# 5. Write tiddy dataset with average of data elements grouped by subject, activity
#
dtTidy <- data.table(dtData)
dtTidy <- dtTidy[, lapply(.SD, mean), by=c("subjectId", "activityName")]

# Write tidy dataset to output file for submission
write.table(dtTidy, "TidyDataSet.txt", row.names = FALSE, quote = FALSE)