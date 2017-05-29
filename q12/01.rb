#!/usr/bin/env ruby

i = 1

while i += 1
  str = ('%10.10f'%Math.sqrt(i)).sub('.','')[0..9]
  break if str.split('').uniq.length == 10
end
puts i

i = 1

while i += 1
  str = ('%10.10f'%Math.sqrt(i)).split('.')[1]
  break if str.split('').uniq.length == 10
end
puts i
