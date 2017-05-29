#!/usr/bin/env ruby

expression = 'READ+WRITE+TALK==SKILL'
nums = expression.split(/[^a-zA-Z]/)
chars = nums.join.split('').uniq
head = nums.map { |num| num[0] }

count = 0
(0..9).to_a.permutation(chars.size) do |seq|
  is_zero_first = head.include?(chars[seq.index(0)]) if seq.include?(0)
  unless is_zero_first
    e = expression.tr(chars.join, seq.join)
    if eval(e)
      puts e
      count += 1
    end
  end
end

puts count
