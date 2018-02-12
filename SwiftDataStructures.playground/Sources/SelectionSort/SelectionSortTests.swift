import XCTest


/**
 
 A suite of tests for the selectionSort function.
 
 */
public class SelectionSortTests: XCTestCase {
    
    func testArrayIsSortedByAscendingOrder() {
        var unsortedArray: [Int] = [4, 2, 7, 1, 3]
        let sorted = unsortedArray.selectionSort()
        XCTAssertEqual(sorted, [1, 2, 3, 4, 7])
    }
    
    func testArrayIsSameSize() {
        var unsortedArray: [Int] = [4, 2, 7, 1, 3]
        let sorted = unsortedArray.selectionSort()
        XCTAssertEqual(sorted.count, 5)
    }
    
    func testPerformance() {
        var unsortedArray: [Int] = []
        for _ in 0...1000 {
            unsortedArray.append(Int(arc4random_uniform(100)))
        }
        
        measureMetrics([.wallClockTime], automaticallyStartMeasuring: true) {
            unsortedArray.selectionSort()
        }
    }
}
