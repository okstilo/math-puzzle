#!/usr/bin/env ruby

a = 1
b = 1
count = 0

while count < 11
  c = a + b
  sum = 0
  c.to_s.split(//).each { |e| sum += e.to_i }
  if (c % sum).zero?
    puts c
    count += 1
  end
  a, b = b, c
end
