#!/usr/bin/swift

func cutbar(n: Int, m: Int, current: Int) -> Int {
    if current >= n {
        return 0
    }
    else if current < m {
        return 1 + cutbar(n: n, m: m, current: current * 2)
    }
    else {
        return 1 + cutbar(n: n, m: m, current: current + m)
    }
}

print(cutbar(n: 20, m: 3, current: 1))
print(cutbar(n: 100, m: 5, current: 1))
