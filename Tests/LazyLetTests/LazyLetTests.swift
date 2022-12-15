import XCTest
@testable import LazyLet

final class LazyLetTests: XCTestCase {
  func testInit() throws {
    @LazyLet var value: Int = 0
    XCTAssertEqual(value, 0)
    value = 1
    XCTAssertEqual(value, 0)
  }
  
  func testInit2() throws {
    @LazyLet var value: Int = 0
    value = 1
    XCTAssertEqual(value, 1)
    value = 2
    XCTAssertEqual(value, 1)
  }
}
