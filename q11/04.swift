#!/usr/bin/swift

import Foundation

var a = 1
var b = 1
var count = 0

while count < 11 {
    var c = a + b
    var sum = 0
    var characters = String(c).characters
    for character in characters {
        let number = Int(String(character))!
        sum += number
    }
    if c % sum == 0 {
        print(c)
        count += 1
    }
    a = b
    b = c
}
