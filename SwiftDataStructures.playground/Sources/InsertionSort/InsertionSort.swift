extension Array where Element: Comparable {
    
    @discardableResult
    public mutating func insertionSort() -> [Element] {
        for n in 1..<self.endIndex {
            
            var index: Index = n
            let element: Element = self[index]
            
            while index > 0 && self[index - 1] > element {
                self[index] = self[index - 1]
                index -= 1
            }
            
            self[index] = element
        }
        
        return self
    }
}
