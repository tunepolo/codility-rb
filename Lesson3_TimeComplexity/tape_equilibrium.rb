=begin
TapeEquilibrium
Minimize the value |(A[0] + ... + A[P-1]) - (A[P] + ... + A[N-1])|.
=end

require 'minitest/autorun'

def solution(a)
  left_sum, right_sum = a[0], a[1..-1].sum
  min_sum_sub = (left_sum - right_sum).abs
  a[1...-1].each do |a_val|
    left_sum += a_val
    right_sum -= a_val
    sum_sub = (left_sum - right_sum).abs
    if sum_sub < min_sum_sub
      min_sum_sub = sum_sub
    end
  end
  return min_sum_sub
end

class TapeEquilibriumTest < Minitest::Test
  def test_solution
    assert_equal 1, solution([3, 1, 2, 4, 3])

    assert_equal 2000, solution([-1000, 1000])
  end
end
