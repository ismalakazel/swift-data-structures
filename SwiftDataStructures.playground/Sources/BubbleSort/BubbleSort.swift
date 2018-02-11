/**
 
 Bubble Sort Algorithm.
 
 The bubble sort algorithm loops though the array and compares if the array element n is bigger than n+1. When true, n and n+1
 are swapped, and the loop continues until the biggest element in the array is moved to the last index. Then, the process is 
 repeated until all elements in the array are put in ascending order.
 
 Eg: [4, 2, 7, 1, 3] -> [2, 4, 1, 7, 3] -> [2, 1, 4, 3, 7] -> [1, 2, 3, 4, 7]
 
 */

extension Array where Array.Element: Comparable {
    
    /**
     
     Sorts the array in ascending order by swapping array elements each time n > n+1.
     
    */
    @discardableResult
    public mutating func bubbleSort() -> [Array.Element] {
        
        var unsortedIndex = self.count - 1
        
        while unsortedIndex > 0  {
            for n in 0..<unsortedIndex {
                if self[n] > self[n+1] {
                    self.swapAt(n, n+1)
                }
            }
    
            unsortedIndex -= 1
        }
        
        return self
    }
}
