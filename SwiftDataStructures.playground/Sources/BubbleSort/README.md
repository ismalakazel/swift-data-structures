# Bubble Sort
 
The bubble sort algorithm loops though an array and compares if the array element n is bigger than n+1. When true, n and n+1
are swapped, and the loop continues until the biggest element in the array is moved to the last index. Then, the process is 
repeated until all elements in the array are put in ascending order.

## Performance measurement
Bubble sort is considered an inefficient algorithm. In Big O Notation it is approximately O(N2), which means that for N data elements the algorithm will have to go through N2 steps to reach completion.

Given an array of 1000 random integers, it takes an average of 0.082 seconds to bubble sort it.
