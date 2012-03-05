#!/usr/bin/env ruby

def get_greater(n1, n2)
  return n1 > n2 ? n1 : n2
end

def calculate_next(number)
  if number == 1
    number += 9
  else
    number += 10
  end
  number
end

n = ARGV[0]
puts "Provided number is #{n}"

if n.length == 1
  puts "Next number is #{calculate_next(n.to_i)}"
else
  n = n.scan(/./)
  if n[1] > n[0]
    n = n.reverse
  else
    a = n
    a.insert(1,"0")
  end
  puts "Next number is #{n}"
end



