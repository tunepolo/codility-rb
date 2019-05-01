=begin
MaxProfit
Given a log of stock prices compute the maximum possible earning.
=end

require 'minitest/autorun'

def solution(a)
  max_ending = max_slice = 0

  a.each_cons(2) do |first, second|
    max_ending = [0, max_ending + (second - first)].max
    max_slice = [max_ending, max_slice].max

    # puts "max_ending: #{max_ending}, max_slice: #{max_slice}"
  end

  return max_slice
end

class MaxProfitTest < Minitest::Test
  def test_solution
    assert_equal 0, solution([])
    assert_equal 0, solution([23171])

    assert_equal 0, solution([2000, 1000])

    assert_equal 2160,solution([21011, 21013, 21123, 21366, 21367, 23171])
    assert_equal 356, solution([23171, 21011, 21123, 21366, 21013, 21367])
  end
end
