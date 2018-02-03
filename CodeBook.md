{\rtf1\ansi\ansicpg1252\cocoartf1561
{\fonttbl\f0\fmodern\fcharset0 CourierNewPSMT;}
{\colortbl;\red255\green255\blue255;\red38\green38\blue38;\red16\green40\blue66;}
{\*\expandedcolortbl;;\csgenericrgb\c14902\c14902\c14902;\csgenericrgb\c6275\c15686\c25882;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardeftab720\ri720\partightenfactor0

\f0\fs22 \cf0 # Code Book:  \cf2 Getting and Cleaning Data Course Project\cf0 \
\pard\pardeftab720\ri720\partightenfactor0
\cf2 John Flipse, 2 February, 2018\
\
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.\
\
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.  The dataset is consumed and scrubbed to generate a tidy data set with the average of each mean & standard deviation variable for each activity and each subject\cf0 \
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardeftab720\ri720\partightenfactor0
\cf0 \
## Data Set Information\
\pard\pardeftab720\ri720\partightenfactor0
\cf3 From the UCI Machine Learning Repository, \'93The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six **activities** (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers (**Subjects**) was selected for generating the training data and 30% the test data.\'94\cf0 \
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardeftab720\ri720\partightenfactor0
\cf0 \
Source:  [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#]\
\
## Identifiers\
- `Subject` - The human subjects who hosted the devices to capture data as they performed an *activity*.\
- `Activity` - Different activities the *subject* carried out:\
  - Walking\
  - Walking Upstairs\
  - Walking Downstairs\
  - Sitting\
  - Standing\
  - Laying\
\
## Measurements\
Note:  Where XYZ are indicated this references three measures, one for X axis, one for Y axis, and one for Z axis.\
\
The following nomenclature apply for the measures listed:\
- time = Time Domain Signals\
- frequency = Frequency Domain Signals\
\
- \'91subjectId\'92                                              \
- \'91activityName\'92                                           \
- \'91activityId\'92                                             \
- \'91timeBodyAccelerometerMeanXYX\'92                             \
- \'91timeBodyAccelerometerStdDeviationXYZ\'92                     \
- \'91timeGravityAccelerometerMeanXYZ\'92                          \
- \'91timeGravityAccelerometerStdDeviationXYZ\'92                  \
- \'91timeBodyAccelerometerJerkMeanXYZ\'92                         \
- \'91timeBodyAccelerometerJerkStdDeviationXYZ\'92                 \
- \'91timeBodyGyroMeanXYZ\'92                                      \
- \'91timeBodyGyroStdDeviationXYZ\'92                              \
- \'91timeBodyGyroJerkMeanXYZ\'92                                  \
- \'91timeBodyGyroJerkStdDeviationXYZ\'92                          \
- \'91timeBodyAccelerometerMagnitudeMean\'92                     \
- \'91timeBodyAccelerometerMagnitudeStdDeviation\'92             \
- \'91timeGravityAccelerometerMagnitudeMean\'92                  \
- \'91timeGravityAccelerometerMagnitudeStdDeviation\'92          \
- \'91timeBodyAccelerometerJerkMagnitudeMean\'92                 \
- \'91timeBodyAccelerometerJerkMagnitudeStdDeviation\'92         \
- \'91timeBodyGyroMagnitudeMean\'92                              \
- \'91timeBodyGyroMagnitudeStdDeviation\'92                      \
- \'91timeBodyGyroJerkMagnitudeMean\'92                          \
- \'91timeBodyGyroJerkMagnitudeStdDeviation\'92                  \
- \'91frequencyBodyAccelerometerMeanXYZ\'92                        \
- \'91frequencyBodyAccelerometerStdDeviationXYZ\'92                \
- \'91frequencyBodyAccelerometerJerkMeanXYZ\'92                    \
- \'91frequencyBodyAccelerometerJerkStdDeviationXYZ\'92            \
- \'91frequencyBodyGyroMeanXYZ\'92                                 \
- \'91frequencyBodyGyroStdDeviationXYZ\'92                         \
- \'91frequencyBodyAccelerometerMagnitudeMean\'92                \
- \'91frequencyBodyAccelerometerMagnitudeStdDeviation\'92        \
- \'91frequencyBodyBodyAccelerometerJerkMagnitudeMean\'92        \
- \'91frequencyBodyBodyAccelerometerJerkMagnitudeStdDeviation\'92\
- \'91frequencyBodyBodyGyroMagnitudeMean\'92                     \
- \'91frequencyBodyBodyGyroMagnitudeStdDeviation\'92             \
- \'91frequencyBodyBodyGyroJerkMagnitudeMean\'92                 \
\pard\pardeftab720\ri720\partightenfactor0
\cf0 - \'91frequencyBodyBodyGyroJerkMagnitudeStdDeviation\'92
\fs24 \
}