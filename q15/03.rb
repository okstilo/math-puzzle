#!/usr/bin/env ruby

N = 10
STEPS = 4

dp = Array.new(N + 1, 0)
cnt = 0
dp[N] = 1

N.times do |i|
  (N + 1).times do |j|
    (1..STEPS).each do |k|
      break if k > j
      dp[j - k] += dp[j]
    end
    dp[j] = 0
  end
  cnt += dp[0] if i % 2 == 1
end

puts cnt
