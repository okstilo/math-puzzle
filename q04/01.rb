#! /bin/sh
exec ruby -S -x "$0" "$@"
#! ruby

def cutbar(n, m, current)
  if current >= n
    0
  elsif current < m
    1 + cutbar(n, m, current * 2)
  else
    1 + cutbar(n, m, current + m)
  end
end

puts cutbar(20, 3, 1)
puts cutbar(100, 5, 1)
