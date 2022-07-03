import XCTest
@testable import SBLogging

final class LoggerTests: XCTestCase {
    
    func testLogger() {
        let logger = Logger(category: "test")
        logger.debug(.initialization, for: URLSession(configuration: .default))
    }
}
