# Selection Sort

Selection sort is an algorithm that sorts data elements in ascending order. The algorithm is described as follows:

For each Element in the array the algorithm will perform a loop N number of times, where N = Element.index, and get the index of the element with the lowest value and swap by the element at index N at the end. The lowest element index starts at Element.Index and is updated when array[Element.Index] > array[N].

## Performance measurement
Given [4, 2, 7, 1, 3] the algorithm performs 12 steps total: 10 comparisons and 2 swaps, taking an average of 0.070 seconds to perform complete the sorting.
