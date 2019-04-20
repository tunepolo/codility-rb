=begin
Distinct
Compute number of distinct values in an array.
=end

require 'minitest/autorun'

def solution(a)
  a.uniq.size
end

class DistinctTest < Minitest::Test
  def test_solution
    assert_equal 3, solution([2, 1, 1, 2, 3, 1])
  end
end
