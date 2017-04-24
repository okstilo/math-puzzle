#!/usr/bin/env ruby

op = ["+", "-", "*", "/", ""]
for i in 1000..9999 do
  c = i.to_s
  unless c.include?("0")
    for j in op do
      for k in op do
        for l in op do
          val = c[3] + j + c[2] + k + c[1] + l + c[0]
          if val.length > 4
            if i == eval(val)
            puts "#{val} = #{i}"
            end
          end
        end
      end
    end
  end
end
