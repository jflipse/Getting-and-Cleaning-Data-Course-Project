{\rtf1\ansi\ansicpg1252\cocoartf1561
{\fonttbl\f0\fmodern\fcharset0 CourierNewPS-BoldMT;\f1\fmodern\fcharset0 CourierNewPSMT;}
{\colortbl;\red255\green255\blue255;\red38\green38\blue38;\red244\green249\blue255;\red82\green90\blue101;
\red255\green255\blue255;\red33\green91\blue198;}
{\*\expandedcolortbl;;\cssrgb\c20000\c20000\c20000;\cssrgb\c96471\c98039\c100000;\cssrgb\c39608\c42745\c47059;
\cssrgb\c100000\c100000\c100000;\cssrgb\c16078\c44706\c81961;}
{\*\listtable{\list\listtemplateid1\listhybrid{\listlevel\levelnfc0\levelnfcn0\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{decimal\}}{\leveltext\leveltemplateid1\'01\'00;}{\levelnumbers\'01;}\fi-360\li720\lin720 }{\listname ;}\listid1}
{\list\listtemplateid2\listhybrid{\listlevel\levelnfc0\levelnfcn0\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{decimal\}}{\leveltext\leveltemplateid101\'01\'00;}{\levelnumbers\'01;}\fi-360\li720\lin720 }{\listname ;}\listid2}}
{\*\listoverridetable{\listoverride\listid1\listoverridecount0\ls1}{\listoverride\listid2\listoverridecount0\ls2}}
\margl1440\margr1440\vieww20000\viewh10400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\b\fs28 \cf2 \cb3 \expnd0\expndtw0\kerning0
#Getting and Cleaning Data Course Project\cf4 \cb1 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf2 \cb5 The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.\cb1 \
\cb5 \
One of the most exciting areas in all of data science right now is wearable computing - see for example {\field{\*\fldinst{HYPERLINK "http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/"}}{\fldrslt \cf6 \ul \ulc6 this article }}. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:\
\cb1 \
\pard\pardeftab720\partightenfactor0
\cf6 \cb5 \ul \ulc6 [{\field{\*\fldinst{HYPERLINK "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"}}{\fldrslt http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones}}]\cf2 \cb1 \ulnone \
\pard\pardeftab720\partightenfactor0
\cf2 \cb5 \
##Here are the data for the project:\
\pard\pardeftab720\partightenfactor0
\cf2 \cb1 \
\cf6 \cb5 \ul [{\field{\*\fldinst{HYPERLINK "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"}}{\fldrslt https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip}}]\cf2 \cb1 \ulnone \
\pard\pardeftab720\partightenfactor0
\cf2 \cb5 \
##You should create one R script called run_analysis.R that does the following.\cb1 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\partightenfactor0
\ls1\ilvl0\cf2 \cb5 \kerning1\expnd0\expndtw0 {\listtext	1	}\expnd0\expndtw0\kerning0
Merges the training and the test sets to create one data set.\cb1 \
\ls1\ilvl0\cb5 \kerning1\expnd0\expndtw0 {\listtext	2	}\expnd0\expndtw0\kerning0
Extracts only the measurements on the mean and standard deviation for each measurement.\cb1 \
\ls1\ilvl0\cb5 \kerning1\expnd0\expndtw0 {\listtext	3	}\expnd0\expndtw0\kerning0
Uses descriptive activity names to name the activities in the data set\cb1 \
\ls1\ilvl0\cb5 \kerning1\expnd0\expndtw0 {\listtext	4	}\expnd0\expndtw0\kerning0
Appropriately labels the data set with descriptive variable names.\cb1 \
\ls1\ilvl0\cb5 \kerning1\expnd0\expndtw0 {\listtext	5	}\expnd0\expndtw0\kerning0
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.\
\pard\tx720\pardeftab720\partightenfactor0
\cf2 \
\pard\pardeftab720\partightenfactor0

\f0\b \cf2 \cb3 #Review criteria\cf4 \cb1 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\partightenfactor0
\ls2\ilvl0
\f1\b0 \cf2 \cb5 \kerning1\expnd0\expndtw0 {\listtext	1	}\expnd0\expndtw0\kerning0
The submitted data set is tidy.\cb1 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\partightenfactor0
\ls2\ilvl0\cf2 \cb5 \kerning1\expnd0\expndtw0 {\listtext	2	}\expnd0\expndtw0\kerning0
The Github repo contains the required scripts.\cb1 \
\ls2\ilvl0\cb5 \kerning1\expnd0\expndtw0 {\listtext	3	}\expnd0\expndtw0\kerning0
GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.\cb1 \
\ls2\ilvl0\cb5 \kerning1\expnd0\expndtw0 {\listtext	4	}\expnd0\expndtw0\kerning0
The README that explains the analysis files is clear and understandable.\cb1 \
\ls2\ilvl0\cb5 \kerning1\expnd0\expndtw0 {\listtext	5	}\expnd0\expndtw0\kerning0
The work submitted for this project is the work of the student who submitted it.\cf2 \cb5 \
}