import XCTest


/**
 
 Runs a suite of tests contained in a XCTest class.
 
 - paramater testClass: The XCTest class to be tested.
 
 */
public func test(testClass: XCTestCase.Type) {
    testClass.defaultTestSuite.run()
}
