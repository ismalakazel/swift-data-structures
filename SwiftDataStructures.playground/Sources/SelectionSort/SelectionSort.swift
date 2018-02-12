extension Array where Element: Comparable {
    
    @discardableResult
    public mutating func selectionSort() -> [Element] {
        guard !isEmpty else { return self }

        /**
         
         Why not 0..<self.endIndex ?
         Because the last number, if greater, will be swapped with the penultimate.
         
         */
        for index in 0..<self.endIndex - 1 {

            var lowestValueIndex: Index = index
            
            for n in index + 1..<self.endIndex {
                if self[lowestValueIndex] > self[n]  {
                    lowestValueIndex = n
                }
            }

            if lowestValueIndex != index {
                self.swapAt(index, lowestValueIndex)
            }
        }

        return self
    }
}
