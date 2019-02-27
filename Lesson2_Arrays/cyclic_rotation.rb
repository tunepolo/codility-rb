=begin
CyclicRotation
Rotate an array to the right by a given number of steps.

https://app.codility.com/programmers/lessons/2-arrays/cyclic_rotation/
=end

require 'minitest/autorun'

def solution(a, k)
  a.rotate(-k)
end

class CyclicRotationTest < Minitest::Test
  def test_solution
    assert_equal [6, 3, 8, 9, 7], solution([3, 8, 9, 7, 6], 1)
    assert_equal [9, 7, 6, 3, 8], solution([3, 8, 9, 7, 6], 3)
    assert_equal [0, 0, 0], solution([0, 0, 0], 1)
    assert_equal [1, 2, 3, 4], solution([1, 2, 3, 4], 4)
  end
end
