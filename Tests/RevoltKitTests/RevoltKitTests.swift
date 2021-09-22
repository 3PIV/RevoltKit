import XCTest
@testable import RevoltKit

final class RevoltKitTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(RevoltKit().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
