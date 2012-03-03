#!/usr/bin/env ruby

n = ARGV[0]
buffer = []
puts "Provided number is #{n}"

if n[1] > n[0]
  buffer[1] = n[0]
  buffer[0] = n[1]
else
  buffer[2] = n[1]
  buffer[1] = "0"
  buffer[0] = n[0]
end

puts "Next number is #{buffer.to_s}"

