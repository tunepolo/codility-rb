=begin
Triangle
Determine whether a triangle can be built from a given set of edges.
=end

require 'minitest/autorun'

def solution(a)
  a.select{|v| v > 0}.sort.combination(3).each do |arr|
    p, q, r = arr
    if p + q > r then
      return 1
    end
  end

  return 0
end

class TriangleTest < Minitest::Test
  def test_solution
    assert_equal 1, solution([10, 2, 5, 1, 8, 20])
    assert_equal 0, solution([10, 50, 5, 1])
  end
end
