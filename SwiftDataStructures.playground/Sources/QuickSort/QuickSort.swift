extension Array where Element: Comparable {
    
    @discardableResult
    public mutating func quickSort(_ lhs: Int = 0, _ rhs: Int = 0) -> [Element] {
        guard rhs - lhs > 0 else { return self }
        
        let pivot = partition(lhs, rhs)
        quickSort(lhs, pivot - 1)
        quickSort(pivot + 1, rhs)
        return self
    }
    
    private mutating func partition(_ lhs: Int, _ rhs: Int) -> Int {
        let pivot = self[lhs]
        var l = lhs - 1
        var r = rhs + 1

        while true {
            repeat { r -= 1 } while self[r] > pivot
            repeat { l += 1 } while self[l] < pivot
            guard l < r else { return r }
            swapAt(l, r)
        }
    }
}
