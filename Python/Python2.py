#Question 1

import numpy as np

arr = np.array([[1, 11],
			[9, 19]])

print(arr)
eigenval, eigenvec = np.linalg.eig(arr)
print("Eigenvalue =" , eigenval)
print("Right eigenvectors =" , eigenvec)



#Question 2
from numpy import array
from scipy import linalg

arr2 = array([
[20, 40],
[31, 24],
[8, 2],
[4,5]])
print(arr2)

U,s,V = linalg.svd(arr2)
print(U)
print(s)
print(V)




#Question 3
from numpy import array
from scipy import linalg

arr3 = array([
[23,24],
[43,44]])
print(arr3)
detarr3 =linalg.det(arr3)
print(detarr3)
