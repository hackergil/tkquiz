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
  end

    def test_valid_number
    result = @roman.convert(nil)
    assert_not_nil result
    assert_equal("You have to provide a valid number", result)

    result = @roman.convert("asdf")
    assert_not_nil result
    assert_equal("You have to provide a valid number", result)
  end

  def test_no_numbers_above_3k
    result = @roman.convert(3001)
    assert_not_nil(result)
    assert_equal("Romans did not have numbers above 3k", result)
  end

end