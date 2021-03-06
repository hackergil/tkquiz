#!/usr/bin/env ruby

# EXERCISE 1
# Given a number, find the next higher number that uses the same set of digits. 
# For instance, given the number 38276, the next higher number that uses the digits 2 3 6 7 8 is 38627.

# Author: Gilberto Alvarado (gil@hackergil.com)
class Exercise1

  def initialize

  end

  def get_next_number(input)
    if input.nil? or input < 0
      puts "Please provide a valid integer"
      return nil
    end
    puts "Provided number is #{input}"
    n = input.to_s.scan(/\d/)
    # First, check if we can get a number
    if n.length > 1
      limit = n.length - 1
      # If the last number is greater than the one before it, always swap
      if n[limit] > n[limit - 1]
        swap(n, limit, limit - 1)
      else
        done = false
        (limit-2).downto(0).each do |i|
          if n[i] < n[i+1]
            right = n.slice(i, n.length - i)
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
      n = n.join("").to_i
      puts "Next number is #{n}"
      n
    else
      puts "No next number for you!"
      input
    end
  end

  private

  # Swaps the numbers between two positions of the array
  def swap(n, p1, p2)
    aux = n[p1]
    n[p1] = n[p2]
    n[p2] = aux
  end

end

