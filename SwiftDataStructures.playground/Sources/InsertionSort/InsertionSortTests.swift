import XCTest


/**
 
 A suite of tests for the insertionSort function.
 
 */
public class InsertionSortTests: XCTestCase {
    
    func testArrayIsSortedByAscendingOrder() {
        var unsortedArray: [Int] = [4, 2, 7, 1, 3]
        let sorted = unsortedArray.insertionSort()
        XCTAssertEqual(sorted, [1, 2, 3, 4, 7])
    }
    
    func testArrayIsSameSizeAfterSorting() {
        var unsortedArray: [Int] = [4, 2, 7, 1, 3]
        let sorted = unsortedArray.insertionSort()
        XCTAssertEqual(sorted.count, 5)
    }
    
    func testPerformance() {
        var unsortedArray: [Int] = []
        for _ in 0...1000 {
            unsortedArray.append(Int(arc4random_uniform(100)))
        }
        
        measureMetrics([.wallClockTime], automaticallyStartMeasuring: true) {
            unsortedArray.insertionSort()
        }
    }
}
