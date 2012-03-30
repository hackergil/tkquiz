# The Romans wrote numbers using letters - I, V, X, L, C, D, M. (notice these letters have lots of
# straight lines and are hence easy to hack into stone tablets)
# The Kata says you should write a function to convert from normal numbers to Roman Numerals: eg
#     1 --> I
#     3 -> III
#     10 --> X
#     7 --> VII
#etc.
# Author: Gilberto Alvarado (galvarado@tacitknowledge.com)
class RomanNumerals

  def convert(number)

    if number.nil? or !number.is_a? Integer
      return "You have to provide a valid number"
    end

    if number>=3000
      return "Romans did not have numbers above 3k"
    end

    low_symbol="I"
    middle_symbol="V"
    high_symbol="X"

    result = ""

    case number
      when 1..3
        number.times do |i|
          result.concat(low_symbol)
        end
      when 4
        result.concat(low_symbol).concat(middle_symbol)
      when 5
        result.concat(middle_symbol)
      when 6..8
        result.concat(middle_symbol)
        (number - 5).times do |i|
          result.concat(low_symbol)
        end
      when 9
        result.concat(low_symbol).concat(high_symbol)
      when 10
        result.concat(high_symbol)
    end

    result
  end

end