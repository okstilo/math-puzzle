#!/usr/bin/swift

extension Int {
    func toString(radix i: Int = 10) -> String {
        return String(self, radix: i)
    }
}

extension String {
    func reverse() -> String {
        return String(self.characters.reversed())
    }
}

var num = 11
while true {
    if ( num.toString() == num.toString().reverse() &&
        num.toString(radix: 8) == num.toString(radix: 8).reverse() &&
        num.toString(radix: 2) == num.toString(radix: 2).reverse()
        ){
        print(num)
        break
    }
    num += 2
}
