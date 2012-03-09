#!/usr/bin/env ruby

# EXERCISE 1
# Given a number, find the next higher number that uses the same set of digits. 
# For instance, given the number 38276, the next higher number that uses the digits 2 3 6 7 8 is 38627.

# Swaps the numbers between two positions of the array
def swap(n, p1, p2)
    aux = n[p1]
    n[p1] = n[p2]
    n[p2] = aux
end

# Checks that we can actually get a combination from the given number
def check_next_number(n)
  has_next_number = false
  (n.length - 1).times do |i|
    if n[i] < n[i + 1]
      has_next_number = true
    end
  end
  has_next_number
end

n = ARGV[0]
puts "Provided number is #{n}"
n = n.scan(/\d/)
# First, check if we can get a number
if n.length > 1 and check_next_number(n)
  limit = n.length - 1
  # If the last number is greater than the one before it, always swap
  if n[limit] > n[limit - 1]
    swap(n, limit, limit - 1)
  else
    done = false
    (limit-2).downto(0).each do |i|
      if n[i] < n[i+1]
        right = n.slice(i, limit)
        left = n.slice(0, i)
        (right.length-1).downto(0).each do |j|
          if right[j] > n[i]
            aux = right.delete_at(j)
            right.sort!
            right.insert(0, aux)
            done = true
            break
          end
        end
        n = left + right
        break if done
      end
    end
  end
  puts "Next number is #{n.join("")}"
else
  puts "No next number for you!"
end


