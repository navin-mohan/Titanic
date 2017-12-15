setwd('/home/nm/Projects/kaggle/titanic')
install.packages("mice")
library(mice)
library(dplyr)
train_data <- read.csv('./data/train.csv')
test_data <- read.csv('./data/test.csv')


test_data$Survived <- NA 

train_data$train <- TRUE
test_data$train <- FALSE

full_data <- rbind(train_data,test_data)

full_data <- full_data %>%
  mutate(
    full_data,
    Sex = as.factor(Sex),
    Embarked = as.factor(Embarked)
  )
str(full_data)
