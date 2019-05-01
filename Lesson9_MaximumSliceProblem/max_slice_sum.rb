=begin
MaxSliceSum
Find a maximum sum of a compact subsequence of array elements.
=end

require 'minitest/autorun'

def solution(a)
  min_array_value = -1000000
  max_ending = max_slice = min_array_value

  a.each do |value|
    max_ending = [min_array_value, max_ending + value, value].max
    max_slice = [max_ending, max_slice].max
  end

  return max_slice
end

class MaxSliceSumTest < Minitest::Test
  def test_solution
    assert_equal -2, solution([-3, -2, -6, -4])
    assert_equal 0, solution([-3, -2, -6, -4, 0])

    assert_equal 5, solution([3, 2, -6, 4, 0])
  end
end
