
import Foundation

public func code(for title: String,
                    sampleCode: () -> Void) {
print("""
_____________________________
Results for: '\(title)'
""")
  sampleCode()
}


public enum DateFormatterStyleEnums {
    public static let styles:[DateFormatter.Style] = [.none, .short, .medium, .long, .full]
}
public extension DateFormatter.Style {
    var description: String {
        switch self {
        case .none:
           return  ".none"
        case .short:
            return ".short"
        case .medium:
            return ".medium"
        case .long:
            return ".long"
        case .full:
            return ".full"
        @unknown default:
            return "unknown"
        }
    }
}

