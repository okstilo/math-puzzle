#!/usr/bin/swift

var num = 11

while true {
    if ( String(num) == String(String(num).characters.reversed()) &&
        String(num, radix: 8) == String(String(num, radix: 8).characters.reversed()) &&
        String(num, radix: 2) == String(String(num, radix: 2).characters.reversed())){

          print(num)
          break
    }
    num += 2
}
