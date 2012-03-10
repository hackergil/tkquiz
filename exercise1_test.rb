#!/usr/bin/env ruby

# Author: Gilberto Alvarado (gil@hackergil.com)

require "test/unit"
require './exercise1'

class Exercise1_test < Test::Unit::TestCase

  def setup
    @calculator = Exercise1.new
  end

  def test_recalculate_next_number
    assert_equal(4, @calculator.get_next_number(4))
    assert_equal(71, @calculator.get_next_number(17))
    assert_equal(71, @calculator.get_next_number(71))
    assert_equal(318, @calculator.get_next_number(183))
    assert_equal(381, @calculator.get_next_number(318))
    assert_equal(813, @calculator.get_next_number(381))
    assert_equal(831, @calculator.get_next_number(813))
    assert_equal(1324, @calculator.get_next_number(1243))
    assert_equal(4321, @calculator.get_next_number(4321))
    assert_equal(38627, @calculator.get_next_number(38276))
    assert_equal(62378, @calculator.get_next_number(38762))
  end

  def test_fail_with_negative_numbers
    assert(true)
  end

  def test_fail_if_number_not_provided
    assert(true)
  end

end