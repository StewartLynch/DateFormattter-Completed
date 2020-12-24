/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 
 ## Strings to Dates
 
 */
import Foundation

let now = Date()
let calendar = Calendar.current

code(for: "String to Date") {
    let sampleDateString = "23.12.20"
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .short
    dateFormatter.locale = Locale(identifier: "de")
    print(dateFormatter.date(from: sampleDateString)!)
}


code(for: "DateComponents") {
//    let christmasComponents = DateComponents(calendar: calendar,
//                                             timeZone: <#T##TimeZone?#>,
//                                             era: <#T##Int?#>,
//                                             year: <#T##Int?#>,
//                                             month: <#T##Int?#>,
//                                             day: <#T##Int?#>,
//                                             hour: <#T##Int?#>,
//                                             minute: <#T##Int?#>,
//                                             second: <#T##Int?#>,
//                                             nanosecond: <#T##Int?#>,
//                                             weekday: <#T##Int?#>,
//                                             weekdayOrdinal: <#T##Int?#>,
//                                             quarter: <#T##Int?#>,
//                                             weekOfMonth: <#T##Int?#>,
//                                             weekOfYear: <#T##Int?#>,
//                                             yearForWeekOfYear: <#T##Int?#>)
    var christmasComponents = DateComponents()
    christmasComponents.calendar = calendar
    christmasComponents.month = 12
    christmasComponents.day = 25
    christmasComponents.year = 2025
    
    let christmas = calendar.date(from: christmasComponents)
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .full
    dateFormatter.timeStyle = .full
    print(dateFormatter.string(from: christmas!))
}

code(for: "Family Day in 2025") {
    var familyDayComponents = DateComponents()
    familyDayComponents.calendar = calendar
    familyDayComponents.year = 2025
    familyDayComponents.month = 2
    familyDayComponents.weekday = 2
    familyDayComponents.weekdayOrdinal = 3
    let familyDay = calendar.date(from: familyDayComponents)
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .full
    dateFormatter.timeStyle = .full
    print(dateFormatter.string(from: familyDay!))
}

/*:
 [< Previous](@previous)           [Home](Introduction)            [Next >](@next)
 */
