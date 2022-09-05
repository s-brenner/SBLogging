import XCTest
@testable import SBLogging

@available(iOS 14, tvOS 14, macOS 11, watchOS 7, *)
final class LoggerTests: XCTestCase {
    
    func testLogger() {
        let logger = Logger(category: "test")
        logger.debug(.initialization, for: URLSession(configuration: .default))
    }
}
