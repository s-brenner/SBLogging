import XCTest
@testable import SBLogging

@available(iOS 14.0, tvOS 14.0, macOS 11.0, *)
final class LoggerTests: XCTestCase {
    
    func testLogger() {
        let logger = Logger(category: "test")
        logger.debug(.initialization, for: URLSession(configuration: .default))
    }
}
