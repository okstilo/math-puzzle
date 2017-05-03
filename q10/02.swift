#!/usr/bin/swift

let euro = [ 0, 32, 15, 19, 4, 21, 2, 25, 17, 34,
             6, 27, 13, 36, 11, 30, 8, 23, 10, 5,
             24, 16, 33, 1, 20, 14, 31, 9, 22, 18,
             29, 7, 28, 12, 35, 3, 26 ]

let usa = [ 0, 28, 9, 26, 30, 11, 7, 20, 32, 17,
            5, 22, 34, 15, 3, 24, 36, 13, 1, 00,
            27, 10, 25, 29, 12, 8, 19, 31, 18, 6,
            21, 33, 16, 4, 23, 35, 14, 2 ]

func sumMax(roulette: [Int], n: Int) -> Int {
    var ans = roulette.prefix(n).reduce(0, +)
    var tmp = ans
    for i in 0..<roulette.count {
        let a = (i + n) % roulette.count
        tmp += roulette[a]
        tmp -= roulette[i]
        if ans < tmp {
            ans = tmp
        }
    }
    return ans
}

var cnt = 0
for i in 2...36 {
    if sumMax(roulette: euro, n: i) < sumMax(roulette: usa, n: i) {
        cnt += 1
    }
}

print(cnt)
