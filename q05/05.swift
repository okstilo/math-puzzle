#!/usr/bin/swift

func repeatedCombination<T>( objects: [T], n: Int) -> [[T]] {
    var objects = objects
    if n == 0 { return [[]] } else {
        var combos = [[T]]()
        while let element = objects.first {
            combos.append(contentsOf: repeatedCombination(objects: objects, n: n - 1).map{ [element] + $0 })
            objects.removeFirst()
        }
        return combos
    }
}

let coins = [10, 50, 100, 500]
var count = 0

for i in 2...15 {
    for coinSet in repeatedCombination(objects: coins, n: i) {
        if coinSet.reduce(0, +) == 1000 {
            count += 1
        }
    }
}

print(count)
