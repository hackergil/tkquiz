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

  @@symbols = [
    {
      'low' => 'I',
      'middle' => 'V',
      'high' => 'X'
    },
    {
      'low' => 'X',
      'middle' => 'L',
      'high' => 'C'
    },
    {
      'low' => 'C',
      'middle' => 'D',
      'high' => 'M'
    },
  ]

  # Converts a number to its roman representation
  def convert(number)

    if number.nil? or !number.is_a? Integer
      return "You have to provide a valid number"
    end

    if number>=3000
      return "Romans did not have numbers above 3k"
    end

    if number<=0
      return "Romans did not know there was a zero :)"
    end

    digits = number.to_s.scan(/\d/).reverse

    result =""

    (digits.length).times do |i|
      digit_output = convert_digit(digits[i].to_i, @@symbols[i])
      result = digit_output + result
    end
    result
  end

  # Converts a digit to its roman representation according to specified symbols
  def convert_digit(number, symbols)
      result = ""

      case number
        when 1..3
          number.times do |i|
            result.concat(symbols['low'])
          end
        when 4
          result.concat(symbols['low']).concat(symbols['middle'])
        when 5
          result.concat(symbols['middle'])
        when 6..8
          result.concat(symbols['middle'])
          (number - 5).times do |i|
            result.concat(symbols['low'])
          end
        when 9
          result.concat(symbols['low']).concat(symbols['high'])
      end

      result
    end

end