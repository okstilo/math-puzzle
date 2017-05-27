#!/usr/bin/swift

let N = 30
var boy = 1
var girl = 0

for _ in 1...N {
    let tmp_b = boy + girl
    let tmp_g = boy
    boy = tmp_b
    girl = tmp_g
}

print(boy + girl)
