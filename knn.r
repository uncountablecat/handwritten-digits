# Author: Chao Guo
library(class)


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

X_train = diffusionmap(X_train)

model_knn = knn(train=X_train, test=X_test, cl=label_train, k=18)

correct_num = 0
for (i in 1:nrow(X_test)) {
    if (model_knn[i]==label_test[i]) {
    	correct_num = correct_num + 1
    }
}

print(paste('There are ',nrow(X_test),' data points in total'))
print(paste('The model made ',correct_num,' correct predictions'))
print(paste('The accuracy is ', correct_num/nrow(X_test)))