from numpy import genfromtxt
from sklearn.naive_bayes import MultinomialNB
import pandas as pd
import time


start = time.clock()

# read csv file
raw_set = pd.read_csv('training_set.csv', sep=',', header=0)

# testing purpose: dimension check
print 'Original dataset:',
print(raw_set.shape)

training_set = raw_set.iloc[0:5000,:] # pandas uses 0 index, unlike R
test_set = raw_set.iloc[5000:7000,:]

num_of_train = training_set.shape[0]
num_of_test = test_set.shape[0]

# testing purpose: dimension check
print 'Training set has ' + str(num_of_train) + ' rows'
print 'Test set has ' + str(num_of_test) + ' rows'

X_train = training_set.iloc[:,1:]
y_train = training_set.iloc[:,0]
X_test = test_set.iloc[:,1:]
y_test = test_set.iloc[:,0] 

gnb = MultinomialNB()
y_hat = gnb.fit(X_train,y_train).predict(X_test) # this is a tuple

correct_num = 0.0
for i in range(0,num_of_test):
	if y_hat[i]==y_test.iloc[i]:
		correct_num = correct_num + 1

print('Accuracy: '),
print(correct_num/num_of_test)

end = time.clock()
print('Time used: ')
print(end-start)