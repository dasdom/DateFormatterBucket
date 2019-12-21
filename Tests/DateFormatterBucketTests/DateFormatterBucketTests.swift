import XCTest
@testable import DateFormatterBucket

final class DateFormatterBucketTests: XCTestCase {
  
  override func tearDown() {
    DateFormatterBucket.shared.dateFormatters.removeAll()
  }
  
  func test_returnsPreviousFormatter_forSameFormat() {
    
    let dateFormatter = DateFormatterBucket.shared["yyyy-MM-dd"]
    let newDateFormatter = DateFormatterBucket.shared["yyyy-MM-dd"]
    
    XCTAssertEqual(dateFormatter, newDateFormatter)
    XCTAssertEqual(1, DateFormatterBucket.shared.dateFormatters.count)
  }
  
  func test_subscriptSetsFormat() {
    let format = "yyyy-MM-dd HH:ss"
    let dateFormatter = DateFormatterBucket.shared[format]
    
    XCTAssertEqual(format, dateFormatter.dateFormat)
  }
  
  func test_formatter_setsTimeStyleAndDateStyle() {
    let dateFormatter = DateFormatterBucket.shared.formatter(dateStyle: .long, timeStyle: .short)
    
    XCTAssertEqual(dateFormatter.dateStyle, .long)
    XCTAssertEqual(dateFormatter.timeStyle, .short)
  }
}
