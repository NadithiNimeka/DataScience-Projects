install.packages("e1071")
install.packages("caret")
install.packages("caTools")

library(e1071)
library(caret)
library(caTools)

#Perform Data Splitting
split_ratio <- sample.split(dset2, SplitRatio = 0.75)
training_dataset <- subset(dset2, split_ratio == TRUE)
testing_dataset <- subset(dset2, split_ratio == FALSE)

#ensure favourite genre is a factor in both data sets with the same levels
training_dataset$Music.effects <- as.factor(training_dataset$Music.effects)
testing_dataset$Music.effects <- as.factor(testing_dataset$Music.effects)

#train the naive bayes model
set.seed(400)
model <- naiveBayes(Music.effects~., data = training_dataset)

#make predictions on the testing dataset
predicted_results <- predict(model , newdata = testing_dataset)

#ensure predicted results are factors with the same levels as testing_dataset
predicted_results <- factor(predicted_results, levels = levels(testing_dataset$Music.effects))

#create confusion matrix
confusionMatrix(predicted_results, testing_dataset$Music.effects)

