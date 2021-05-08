#if canImport(Foundation)
import Foundation

@available(iOS 14.0, tvOS 14.0, macOS 11.0, *)
public extension Logger {
    
    /// Creates a custom logger for logging to a subsystem and category where the subsystem is set to your app's bundle identifier.
    /// - Author: Scott Brenner | SBLogging
    init(category: String) {
        self.init(subsystem: Bundle.main.bundleIdentifier!, category: category)
    }
    
    /// - Author: Scott Brenner | SBLogging
    enum Phase: CustomStringConvertible {
        case initialization, deinitialization
        
        public var description: String {
            switch self {
            case .initialization: return "Init"
            case .deinitialization: return "Deinit"
            }
        }
    }
    
    /// Logs a phase at the debug level.
    /// - Author: Scott Brenner | SBLogging
    /// - Parameters:
    ///   - phase: The phase that will be logged.
    ///   - object: The object that will be described in the debug message.
    /// ## Example
    /// ```
    /// let session = URLSession(configuration: .default)
    /// logger.debug(.initialization, for: session)
    ///
    /// // logs "Init <__NSURLSessionLocal: 0x100f48400>"
    /// ```
    func debug<T>(_ phase: Phase, for object: T) {
        debug("\(phase.description) \(String(describing: object))")
    }
}
#endif
