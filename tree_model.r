# Author: Chao Guo
library(randomForest)


raw_data = read.csv('training_set.csv',header=TRUE)
#test_set = read.csv('test_set.csv',header=TRUE)
training_set = raw_data[1:3003,]
test_set = raw_data[3031:4000,]

label_train = training_set[,1]
label_train = as.factor(label_train)
X_train = training_set[,2:ncol(training_set)]
print('X_train loaded')

label_test = test_set[,1]
label_test = as.factor(label_test)
X_test = test_set[,2:ncol(test_set)]
print('X_test loaded')

set.seed(37)

bagging_digits = randomForest(x=X_train, y=label_train, mytr=200, importance=TRUE)
print('Building random forest model......')
yhat = predict(bagging_digits,newdata=X_test)
print('Computing predicted values......')
correct_num = sum(yhat==label_test)

print(paste('Trained on ',nrow(X_train),' data points.'))
print(paste('There are ',nrow(X_test),' data points test set in total'))
print(paste('The model made',correct_num,'correct predictions'))