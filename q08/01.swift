#!/usr/bin/swift

let n = 12

func move(log: [[Int]]) -> Int {
    guard log.count != (n + 1) else {
        return 1
    }
    var cnt = 0
    let step = [[1, 0], [-1, 0], [0, 1], [0, -1]]
    for s in step {
        var tmp = log
        let last = tmp.last!
        let next = [last[0] + s[0], last[1] + s[1]]
        if !tmp.contains(where: { $0 == next }) {
            tmp.append(next)
            cnt += move(log: tmp)
        }
    }
    return cnt
}

let start = [0, 0]
let result = move(log: [start])
print(result)
