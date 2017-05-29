#!/usr/bin/env ruby

def check(n, pre, log, square)
  if n == log.size
    if square.include?(1 + pre)
      puts n
      p log
      return true
    end
  else
    ((1..n).to_a - log).each do |i|
      if square.include?(pre + i)
        return true if check(n, i, log + [i], square)
      end
    end
  end
  false
end

n = 2
loop do
  square = (2..Math.sqrt(n * 2).floor).map { |i| i**2 }
  break if check(n, 1, [1], square)
  n += 1
end
