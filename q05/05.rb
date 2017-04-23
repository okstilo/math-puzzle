#!/usr/bin/env ruby

coins = [10, 50, 100, 500]
count = 0

(2..15).each do |i|
  coins.repeated_combination(i).each do |set|
    count += 1 if set.inject(:+) == 1000
  end
end

puts count
