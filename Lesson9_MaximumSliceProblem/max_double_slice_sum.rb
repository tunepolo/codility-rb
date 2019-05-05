=begin
MaxDoubleSliceSum
Find the maximal sum of any double slice.
=end

require 'minitest/autorun'

def solution(a)
  return 0 if a.size <= 3

  max_ending_from_left  = Array.new(a.size, 0)
  max_ending_from_right = Array.new(a.size, 0)

  1.upto(a.size-2) do |index|
    tmp = max_ending_from_left[index-1] + a[index]
    max_ending_from_left[index] = [tmp, 0].max
  end

  (a.size-2).downto(1) do |index|
    tmp = max_ending_from_right[index+1] + a[index]
    max_ending_from_right[index] = [tmp, 0].max
  end

  max_sum = 0
  1.upto(a.size-2) do |index|
    max_sum = [max_sum, max_ending_from_left[index-1] + max_ending_from_right[index+1]].max
  end

  return max_sum
end

class MaxDoubleSliceSumTest < Minitest::Test
  def test_solution
    assert_equal 0, solution([3, 2, 6])

    assert_equal 17, solution([3, 2, 6, -1, 4, 5, -1, 2])
  end
end
