#!/usr/bin/env ruby

N = 30
boy = 1
girl = 0

N.times do
  boy, girl = boy + girl, boy
end

puts boy + girl
