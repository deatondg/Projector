import XCTest
@testable import Projector

final class ProjectorTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Projector().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
