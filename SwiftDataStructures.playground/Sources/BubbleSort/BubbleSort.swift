extension Array where Array.Element: Comparable {
    
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
