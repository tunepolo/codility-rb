=begin
MaxProductOfThree
Maximize A[P] * A[Q] * A[R] for any triplet (P, Q, R).
=end

require 'minitest/autorun'

def solution(a)
  a.sort!
  # 上位3つの積か下位2つ(マイナスxマイナス)と最上位の積のいずれかが最大値となる。
  max_three = a[-3..-1].inject(&:*)
  min_two_and_max = a[0] * a[1] * a[-1]

  return [max_three, min_two_and_max].max
end

class DistinctTest < Minitest::Test
  def test_solution
    assert_equal 60, solution([-3, 1, 2, -2, 5, 6])
    assert_equal 210, solution([-7, -5, 2, -2, 5, 6])
  end
end
