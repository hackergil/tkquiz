#!/usr/bin/env ruby

# EXERCISE 1
# Given a number, find the next higher number that uses the same set of digits. 
# For instance, given the number 38276, the next higher number that uses the digits 2 3 6 7 8 is 38627.

def get_greater(n1, n2)
  return n1 > n2 ? n1 : n2
end

n = ARGV[0]
puts "Provided number is #{n}"

if n.length <= 1
  puts "Next number is #{n.to_i}"
else
  n = n.scan(/./)
  if n[1] > n[0]
    n = n.reverse
  end
  puts "Next number is #{n.join("")}"
end




