/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 ## Dates To Strings
 A Date value encapsulate a single point in time, independent of any particular calendrical system or time zone. Date values represent a *time interval relative to an absolute reference date.*
 The Date structure provides methods for comparing dates, calculating the time interval between two dates, and creating a new date from a time interval relative to another date. Use date values in conjunction with **DateFormatter** instances to create localized representations of dates and times and with **Calendar** instances to perform calendar arithmetic.

*/
import Foundation

let now = Date()
code(for: "DateFormatter DateStyles and TimeStyles") {
    print(now)
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .full
    dateFormatter.timeStyle = .full
    print(dateFormatter.string(from: now))
}

code(for: "DateFormatter DateStyles + Locale") {
    let dateFormatter = DateFormatter()
//    dateFormatter.locale = Locale(identifier: "en-GB")
//    print(Locale.availableIdentifiers)
//    dateFormatter.dateStyle = .full
//    print(dateFormatter.string(from: now))
    for dateStyle in DateFormatterStyleEnums.styles {
        dateFormatter.dateStyle = dateStyle
        print("\(dateStyle.description) - \(dateFormatter.string(from: now))")
    }
}

code(for: "DateFormatter TimeStyles + Locale") {
    let dateFormatter = DateFormatter()
//    dateFormatter.locale = Locale(identifier: "de")
    for timeStyle in DateFormatterStyleEnums.styles {
        dateFormatter.timeStyle = timeStyle
        print("\(timeStyle.description) - \(dateFormatter.string(from: now))")
    }
}

code(for: "Time Zones") {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .long
    dateFormatter.timeStyle = .long
    dateFormatter.timeZone = TimeZone(abbreviation: "NZST")
//    print(TimeZone.knownTimeZoneIdentifiers)
//    print(TimeZone.abbreviationDictionary)
    print(dateFormatter.string(from: now))
}

code(for: "DateFormatter DateFormat") {
    // https://www.datetimeformatter.com/how-to-format-date-time-in-swift/
    // https://nsdateformatter.com
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "EEEE, MMMM d, yyyy - hh:mm:ss a zzz"
    print(dateFormatter.string(from: now))

}
/*:

 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
