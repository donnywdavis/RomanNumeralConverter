import XCTest
import RomanNumeralConverter

class Tests: XCTestCase {
    
    func testConvertNumber() {
        let number1 = RomanNumeralConverter.convertNumber(1)
        XCTAssert(number1 == "I", "Number 1 does not equal I")
        
        let number10 = RomanNumeralConverter.convertNumber(10)
        XCTAssert(number10 == "X", "Number 10 does not equal X")
        
        let number73 = RomanNumeralConverter.convertNumber(73)
        XCTAssert(number73 == "LXXIII", "Number 73 does not equal LXXIII")
    }
    
}
