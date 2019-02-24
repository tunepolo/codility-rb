=begin
TapeEquilibrium
Minimize the value |(A[0] + ... + A[P-1]) - (A[P] + ... + A[N-1])|.
=end

require 'minitest/autorun'

def solution(a)
  min_sum_sub = 100000
  (1...a.length).each do |p_val|
    sum_sub = (a[0...p_val].sum - a[p_val..-1].sum).abs
    if sum_sub < min_sum_sub
      min_sum_sub = sum_sub
    end
  end
  return min_sum_sub
end

class TapeEquilibriumTest < Minitest::Test
  def test_solution
    assert_equal 1, solution([3, 1, 2, 4, 3])
  end
end
