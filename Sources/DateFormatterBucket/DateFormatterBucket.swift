
import Foundation

public class DateFormatterBucket {
  
    public static let shared = DateFormatterBucket()
  
    var dateFormatters: [String: DateFormatter] = [:]
  
    public subscript(format: String) -> DateFormatter {
        get {
            if let formatter = dateFormatters[format] {
                return formatter
            } else {
                let formatter = DateFormatter()
                formatter.dateFormat = format
                dateFormatters[format] = formatter
                return formatter
            }
        }
    }
}
