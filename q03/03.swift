#!/usr/bin/swift

let N = 100
var cards = Array(repeating: false, count: N)

for i in 2...N {
    var j = i - 1
    while j < cards.count {
        cards[j] = !cards[j]
        j += i
    }
}

for i in 0..<N {
    if !cards[i] {
        print(i + 1)
    }
}
