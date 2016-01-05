from numpy import genfromtxt
from sklearn import svm
import pandas as pd

# read csv file
raw_set = pd.read_csv('training_set.csv', sep=',', header=0)

# testing purpose
print 'Original dataset:'
print(raw_set.shape)

training_set = raw_set.iloc[0:40000,:] # pandas uses 0 index, unlike R
test_set = raw_set.iloc[40000:,:]
print(training_set.shape)
print(test_set.shape)

# classifier = svm.svc(kernel='linear', C=1.0)
# classifier.fit(X_train,y_train)