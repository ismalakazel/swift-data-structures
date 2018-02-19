import XCTest


/**
 
 A suite of tests for the selectionSort function.
 
 */
public class QuickSortTests: XCTestCase {
    
    func testArrayIsSortedByAscendingOrder() {
        var unsortedArray: [Int] = [4, 2, 7, 1, 3]
        let sorted = unsortedArray.quickSort(0, unsortedArray.endIndex - 1)
        XCTAssertEqual(sorted, [1, 2, 3, 4, 7])
    }
    
    func testArrayIsSameSize() {
        var unsortedArray: [Int] = [4, 2, 7, 1, 3]
        let sorted = unsortedArray.quickSort(0, unsortedArray.endIndex - 1)
        XCTAssertEqual(sorted.count, 5)
    }
    
    func testPerformance() {
        var unsortedArray: [Int] = []
        for _ in 0...100 {
            unsortedArray.append(Int(arc4random_uniform(100)))
        }
        
        measureMetrics([.wallClockTime], automaticallyStartMeasuring: true) {
            unsortedArray.quickSort(0, unsortedArray.endIndex - 1)
        }
    }
}
