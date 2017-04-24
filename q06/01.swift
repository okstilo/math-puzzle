#!/usr/bin/swift

extension Int {
    func isEven() -> Bool {
        return self % 2 == 0 ? true : false
    }
}

func isLoop(n: Int) -> Bool {
    var check = n * 3 + 1
    while check != 1 {
        check = check.isEven() ? (check / 2) : (check * 3 + 1)
        if check == n {
            return true
        }
    }
    return false
}

var count = 0

for i in 2...10000 {
    if i.isEven() && isLoop(n: i) {
        count += 1
    }
}

print(count)
