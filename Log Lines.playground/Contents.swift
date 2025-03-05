import Foundation

// TODO: define the 'LogLevel' enum, its `init`, and its `shortFormat` method
enum LogLevel: Int {
  case trace, debug, info = 4, warning, error, fatal, unknown = 42

  init(_ log: String) {
      if log.contains("TRC") {
          self = .trace
      } else if log.contains("DBG") {
          self = .debug
      } else if log.contains("INF") {
          self = .info
      } else if log.contains("WRN") {
          self = .warning
      } else if log.contains("ERR") {
          self = .error
      } else if log.contains("FTL") {
          self = .fatal
      } else {
          self = .unknown
      }
  }
    
    func shortFormat(message: String) -> String {
        return "\(rawValue):\(message)"
    }
}

