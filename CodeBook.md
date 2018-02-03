# Code Book:  Getting and Cleaning Data Course Project
John Flipse, 2 February, 2018

Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.  The dataset is consumed and scrubbed to generate a tidy data set with the average of each mean & standard deviation variable for each activity and each subject

## Data Set Information
From the UCI Machine Learning Repository, “The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six **activities** (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers (**Subjects**) was selected for generating the training data and 30% the test data.”

Source:  [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#]

## Identifiers
- `Subject` - The human subjects who hosted the devices to capture data as they performed an *activity*.
- `Activity` - Different activities the *subject* carried out:
  - Walking
  - Walking Upstairs
  - Walking Downstairs
  - Sitting
  - Standing
  - Laying

## Measurements
Note:  Where XYZ are indicated this references three measures, one for X axis, one for Y axis, and one for Z axis.

The following nomenclature apply for the measures listed:
- time = Time Domain Signals
- frequency = Frequency Domain Signals

- ‘subjectId’                                              
- ‘activityName’                                           
- ‘activityId’                                             
- ‘timeBodyAccelerometerMeanXYX’                             
- ‘timeBodyAccelerometerStdDeviationXYZ’                     
- ‘timeGravityAccelerometerMeanXYZ’                          
- ‘timeGravityAccelerometerStdDeviationXYZ’                  
- ‘timeBodyAccelerometerJerkMeanXYZ’                         
- ‘timeBodyAccelerometerJerkStdDeviationXYZ’                 
- ‘timeBodyGyroMeanXYZ’                                      
- ‘timeBodyGyroStdDeviationXYZ’                              
- ‘timeBodyGyroJerkMeanXYZ’                                  
- ‘timeBodyGyroJerkStdDeviationXYZ’                          
- ‘timeBodyAccelerometerMagnitudeMean’                     
- ‘timeBodyAccelerometerMagnitudeStdDeviation’             
- ‘timeGravityAccelerometerMagnitudeMean’                  
- ‘timeGravityAccelerometerMagnitudeStdDeviation’          
- ‘timeBodyAccelerometerJerkMagnitudeMean’                 
- ‘timeBodyAccelerometerJerkMagnitudeStdDeviation’         
- ‘timeBodyGyroMagnitudeMean’                              
- ‘timeBodyGyroMagnitudeStdDeviation’                      
- ‘timeBodyGyroJerkMagnitudeMean’                          
- ‘timeBodyGyroJerkMagnitudeStdDeviation’                  
- ‘frequencyBodyAccelerometerMeanXYZ’                        
- ‘frequencyBodyAccelerometerStdDeviationXYZ’                
- ‘frequencyBodyAccelerometerJerkMeanXYZ’                    
- ‘frequencyBodyAccelerometerJerkStdDeviationXYZ’            
- ‘frequencyBodyGyroMeanXYZ’                                 
- ‘frequencyBodyGyroStdDeviationXYZ’                         
- ‘frequencyBodyAccelerometerMagnitudeMean’                
- ‘frequencyBodyAccelerometerMagnitudeStdDeviation’        
- ‘frequencyBodyBodyAccelerometerJerkMagnitudeMean’        
- ‘frequencyBodyBodyAccelerometerJerkMagnitudeStdDeviation’
- ‘frequencyBodyBodyGyroMagnitudeMean’                     
- ‘frequencyBodyBodyGyroMagnitudeStdDeviation’             
- ‘frequencyBodyBodyGyroJerkMagnitudeMean’                 
- ‘frequencyBodyBodyGyroJerkMagnitudeStdDeviation’
