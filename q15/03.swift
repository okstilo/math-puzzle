#!/usr/bin/swift

let n = 10
let steps = 4
var dp = Array(repeating: 0, count: n + 1)
var count = 0
dp[n] = 1

for i in 0..<n {
    for j in 0..<(n + 1) {
        for k in 1...steps {
            if k > j { break }
            dp[j - k] += dp[j]
        }
        dp[j] = 0
    }
    if i % 2 == 1 {
        count += dp[0]
    }
}
print(count)
