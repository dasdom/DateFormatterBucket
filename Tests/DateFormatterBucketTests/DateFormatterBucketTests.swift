import XCTest
@testable import DateFormatterBucket

final class DateFormatterBucketTests: XCTestCase {
  
  func test_returnsPreviousFormatter_forSameFormat() {
    
    let dateFormatter = DateFormatterBucket.shared["yyyy-MM-dd"]
    let newDateFormatter = DateFormatterBucket.shared["yyyy-MM-dd"]
    
    XCTAssertEqual(dateFormatter, newDateFormatter)
    XCTAssertEqual(1, DateFormatterBucket.shared.dateFormatters.count)
  }
}
