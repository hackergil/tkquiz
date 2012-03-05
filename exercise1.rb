#!/usr/bin/env ruby

n = ARGV[0]
buffer = []
puts "Provided number is #{n}"

if n[1] > n[0]
  buffer[1] = n[0]
  buffer[0] = n[1]
elsif n[1] > n[2]
  
  buffer[2] = n[0]
  buffer[1] = "0"
  buffer[0] = n[1]
end

puts "Next number is #{buffer.join("")}"

def get_greater(n1, n2)
  return n1 > n2 ? n1 : n2
end
