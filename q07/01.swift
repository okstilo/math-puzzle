#!/usr/bin/swift

import Foundation

extension String {
    func reverse() -> String {
        return String(self.characters.reversed())
    }
}

let cal = Calendar.current
let formatter = DateFormatter()
formatter.dateFormat = "yyyyMMdd"

let perv_tokyo = cal.date(from: DateComponents(year: 1964, month:10, day:10))!
let next_tokyo = cal.date(from: DateComponents(year: 2020, month:07, day:24))!

var day = perv_tokyo

while next_tokyo != day {
    let dayStr = formatter.string(from: day)
    let dayNum = String(Int(dayStr)!, radix: 2)
    if dayNum == dayNum.reverse() {
        print(dayStr)
    }
    day = cal.date(byAdding: .day, value: 1, to: day)!
}
