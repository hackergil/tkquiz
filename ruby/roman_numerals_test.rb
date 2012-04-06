#!/usr/bin/env ruby

require "test/unit"
require './roman_numerals'

# Author: Gilberto Alvarado (gil@hackergil.com)
class RomanNumeralsTest < Test::Unit::TestCase

  def setup
    @roman= RomanNumerals.new
  end

  def test_convert
    assert_equal("I", @roman.convert(1))
    assert_equal("III", @roman.convert(3))
    assert_equal("IV", @roman.convert(4))
    assert_equal("VI", @roman.convert(6))
    assert_equal("VIII", @roman.convert(8))
    assert_equal("IX", @roman.convert(9))

    assert_equal("X", @roman.convert(10))
    assert_equal("XIII", @roman.convert(13))
    assert_equal("XIV", @roman.convert(14))
    assert_equal("XVII", @roman.convert(17))
    assert_equal("XIX", @roman.convert(19))
    assert_equal("XXX", @roman.convert(30))
    assert_equal("XL", @roman.convert(40))
    assert_equal("LXXX", @roman.convert(80))

    assert_equal("C", @roman.convert(100))
    assert_equal("CXXIV", @roman.convert(124))
    assert_equal("CCCXXXIII", @roman.convert(333))
    assert_equal("CDXLIV", @roman.convert(444))
    assert_equal("DLV", @roman.convert(555))
    assert_equal("DCCLXVIII", @roman.convert(768))
    assert_equal("CM", @roman.convert(900))

    assert_equal('M', @roman.convert(1000))
    assert_equal('MDCCCLXXVIII', @roman.convert(1878))
    assert_equal('MMM', @roman.convert(3000))

  end

    def test_valid_number
    result = @roman.convert(nil)
    assert_not_nil result
    assert_equal("You have to provide a valid number", result)

    result = @roman.convert("asdf")
    assert_not_nil result
    assert_equal("You have to provide a valid number", result)

    result = @roman.convert(0)
    assert_not_nil result
    assert_equal("Romans did not know there was a zero :)", result)
  end

  def test_no_numbers_above_3k
    result = @roman.convert(3001)
    assert_not_nil(result)
    assert_equal("Romans did not have numbers above 3k", result)
  end

end
