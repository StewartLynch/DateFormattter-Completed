/*:
 [< Previous](@previous)           [Home](Introduction)
 
 ## Date Calculations
 
 */
import Foundation

let now = Date()
let calendar = Calendar.current
let dateFormatter = DateFormatter()
dateFormatter.dateStyle = .full
dateFormatter.timeStyle = .medium

func printFormatted(name:String, date: Date) {
    print("\(name) - \(dateFormatter.string(from: date))")
}

code(for: "Later") {
    // https://useyourloaf.com/blog/fun-with-date-calculations/
    printFormatted(name: "now", date: now)
//    let oneHourFromNow = Date(timeInterval: 60 * 60, since: now)
    let oneHourFromNow = Date(timeIntervalSinceNow: 60 * 60)
    printFormatted(name: "oneHourFromNow", date: oneHourFromNow)
}


code(for: "A long time away") {
    let distantPast = Date.distantPast
    let distantFuture = Date.distantFuture
    printFormatted(name: "distantPast", date: distantPast)
    printFormatted(name: "distantFuture", date: distantFuture)
}

code(for: "Start of Day") {
    printFormatted(name: "now", date: now)
    let startOfToday = calendar.startOfDay(for: now)
    printFormatted(name: "startOfToday", date: startOfToday)
}


code(for: "Next Monday at 9 am") {
    var nextMondayComponents = DateComponents()
    nextMondayComponents.weekday = 2
    nextMondayComponents.hour = 9
    let nextMonday = calendar.nextDate(after: now,
                                       matching: nextMondayComponents,
                                       matchingPolicy: .nextTime)
    printFormatted(name: "nextMonday", date: nextMonday!)
 
}

code(for: "Next Week at noon") {
    var nowComponents = calendar.dateComponents([.day, .month, .year], from: now)
    nowComponents.hour = 12
    let nextWeek = calendar.date(byAdding: .day, value: 7, to: calendar.date(from: nowComponents)!)
    printFormatted(name: "nextWeek", date: nextWeek!)
}

code(for: "Days til Christmas") {
    // https://sarunw.com/posts/getting-number-of-days-between-two-dates/
   var christmasComponents = DateComponents()
    christmasComponents.day = 25
    christmasComponents.month = 12
    christmasComponents.year = 2020
    let christmas = calendar.date(from: christmasComponents)!
    let numberOfDaysTilChristmas = calendar.dateComponents([.day], from: calendar.startOfDay(for: now), to: christmas)
    print(numberOfDaysTilChristmas.day!)
}
//: [< Previous](@previous)           [Home](Introduction)
