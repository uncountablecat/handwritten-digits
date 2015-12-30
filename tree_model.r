# Author: Chao Guo
library(randomForest)


raw_data = read.csv('training_set.csv',header=TRUE)
#test_set = read.csv('test_set.csv',header=TRUE)
training_set = raw_data[1:400,]
test_set = raw_data[401:500,]#nrow(raw_data),]

label_train = training_set[,1]
label_train = as.factor(label_train)
X_train = training_set[,2:ncol(training_set)]

label_test = test_set[,1]
label_test = as.factor(label_test)
X_test = test_set[,2:ncol(test_set)]

set.seed(37)

for (i in 200:784) {
	bagging_digits = randomForest(x=X_train, y=label_train, mytr=784, importance=TRUE)

	yhat = predict(bagging_digits,newdata=X_test)

	print(paste('mytr =',i, 'correct number = ',sum(yhat == label_test)))
}