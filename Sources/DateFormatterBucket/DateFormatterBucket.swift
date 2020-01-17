
import Foundation

public class DateFormatterBucket {
  
  public static let shared = DateFormatterBucket()
  
  var dateFormatters: [String: DateFormatter] = [:]
  
  public func formatter(dateStyle: DateFormatter.Style, timeStyle: DateFormatter.Style) -> DateFormatter {
    let key = "\(dateStyle),\(timeStyle)"
    if let formatter = dateFormatters[key] {
      return formatter
    } else {
      let formatter = DateFormatter()
      formatter.dateStyle = dateStyle
      formatter.timeStyle = timeStyle
      dateFormatters[key] = formatter
      return formatter
    }
  }
  
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
  
  public formatter(format: String, locale: Locale) -> DateFormatter {
    let key = "\(format),\(locale.description)"
    if let formatter = dateFormatters[key] {
      return formatter
    } else {
      let formatter = DateFormatter()
      formatter.dateFormat = format
      formatter.locale = locale
      dateFormatters[key] = formatter
      return formatter
    }
  }
}
