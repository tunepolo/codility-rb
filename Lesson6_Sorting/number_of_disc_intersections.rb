=begin
NumberOfDiscIntersections
Compute the number of intersections in a sequence of discs.
=end

require 'minitest/autorun'

def solution(a)
  count = 0
  count_limit = 10_000_000

  (0...a.size).to_a.combination(2).each do |comb|
    if (comb[1]-comb[0]) <= (a[comb[0]]+a[comb[1]]) then
      count += 1
    end
  end

  (count <= 10_000_000 ) ? count : -1
end

class NumberOfDiscIntersectionsTest < Minitest::Test
  def test_solution
    assert_equal 11, solution([1, 5, 2, 1, 4, 0])
  end
end
