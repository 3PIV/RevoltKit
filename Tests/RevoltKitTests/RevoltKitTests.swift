import XCTest
import Dispatch
@testable import RevoltKit

class Lock {
    var lock: Bool = true
}

final class RevoltKitTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(RevoltAPIClient.basePath, "https://api.revolt.chat")
        let lock: Lock = Lock()
        let newQueue = DispatchQueue(label: "API_Responder")
        RevoltAPIClient.apiResponseQueue = newQueue
        CoreAPI.rootGet { [weak lock] (config: RevoltConfigurationModel?, err: Error?) -> Void in
            XCTAssertNil(err)
            XCTAssertNotNil(config)
            if let config = config {
                print("App: \(config.app)")
                print("WS: \(config.ws)")
                print("VAPID: \(config.vapid)")
            }
            lock?.lock = false
        }
        
        while lock.lock {
            // waiting for request to complete...
        }
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
