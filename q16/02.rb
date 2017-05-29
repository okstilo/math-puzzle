#!/usr/bin/env ruby

MAX = 500
cnt = 0

(1..(MAX / 4)).each do |c|
  (1..(c - 1)).to_a.combination(2) do |a, b|
    if a * a + b * b == c * c
      cnt += 1 if a.gcd(b) == 1
    end
  end
end

puts cnt
