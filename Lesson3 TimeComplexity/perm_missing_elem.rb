=begin
PermMissingElem
Find the missing element in a given permutation.
=end

require 'minitest/autorun'

def solution(a)
  ((1..a.max).to_a - a).first
end

class PermMissingElemTest < Minitest::Test
  def test_solution
    assert_equal 4, solution([2, 3, 1, 5])
  end
end
