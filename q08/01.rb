#!/usr/bin/env ruby

N = 12

def move(log)
  return 1 if log.size == N + 1
  cnt = 0
  [[1, 0], [-1, 0], [0, 1], [0, -1]].each do |d|
    next_pos = [log[-1][0] + d[0], log[-1][1] + d[1]]
    cnt += move(log + [next_pos]) unless log.include?(next_pos)
  end
  cnt
end

start = [0, 0]
puts move([start])
