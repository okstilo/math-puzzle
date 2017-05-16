#!/usr/bin/swift

extension String {
    func first() -> String {
        return String(self[self.startIndex])
    }

    func last() -> String {
        return String(describing: self.characters.last!)
    }
}

let countries = [ "Brazil", "Croatia", "Mexico", "Cameroon", "Spain",
                  "Netherlands", "Chile", "Australia", "Colombia", "Greece",
                  "Coat d'Ivoire", "Japan", "Uruguay", "Costa Rica", "England",
                  "Italy", "Switzerland", "Ecuador", "France", "Honduras",
                  "Argentina", "Bosnia and Herzegovina", "Iran", "Nigeria", "Germany",
                  "Portugal", "Ghana", "USA", "Belgium", "Algeria",
                  "Russia", "Korea Republic" ]

var count = 0

func search(countries: [String], prev: String, depth: Int) {
    let nextCountries = countries.filter { $0.first() == prev.uppercased().last() }
    if nextCountries.count != 0 {
        for c in nextCountries {
            let currentCountries = countries.filter { $0 != c }
            search(countries: currentCountries, prev: c, depth: depth + 1)
        }
    }
    else {
        count = count > depth ? count : depth
    }
}

for c in countries {
    let currentCountries = countries.filter { $0 != c }
    search(countries: currentCountries, prev: c, depth: 1)
}

print(count)
