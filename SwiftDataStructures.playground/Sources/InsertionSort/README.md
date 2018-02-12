# Insertion Sort
 
Starting at index N = 1, the algorithm will leave a gap at index N and shift right every element that comes before it and is greater than it. The algorithm then places element at N at the last shifted element's index.
 
I personally understood this algorithm with a visual description. Check the following example:
  
*Unsorted*
 ```swift
 [2, 1, 3, 0]
 ```
*Starting at N = 1*
 ```swift
                       0            0
 [2, ->0, 3, 1] => [2,  , 3, 1] => [ , 2, 3, 1] => [0, 2, 3, 1]
 ```
*N+1*
 ```swift
                          3
 [0, 2, ->3, 1] => [0, 2,  , 1] => [0, 2, 3, 1]
 ```
*N+1*
 ```swift
                             1             1            1
 [0, 2, 3, ->1] => [0, 2, 3,  ] =>  [0, 2,  , 3] => [0,  , 2, 3] => [0, 1, 2, 3]

```
*Sorted*
```swift
[0, 1, 2, 3]
```

## Performance measurement
 
Given an array of 1000 random integers the algorithm takes an average of 0.008 seconds to completion sorting it. In a worst case scenario the algorithm will be O(N2).
