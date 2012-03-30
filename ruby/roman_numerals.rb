# The Romans wrote numbers using letters - I, V, X, L, C, D, M. (notice these letters have lots of
# straight lines and are hence easy to hack into stone tablets)
# The Kata says you should write a function to convert from normal numbers to Roman Numerals: eg
#     1 --> I
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
      "Romans did not have numbers above 3k"
    end

  end

end