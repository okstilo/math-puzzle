#! /bin/sh
exec ruby -S -x "$0" "$@"
#! ruby

N = 100
cards = Array.new(N, false)

(2..N).each { |i|
  j = i - 1
  while j < cards.size
    cards[j] = !cards[j]
    j += i
  end
}

N.times { |i|
  puts i + 1 if !cards[i]
}
