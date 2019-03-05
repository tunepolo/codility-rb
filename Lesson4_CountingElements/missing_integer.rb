=begin
MissingInteger
Find the smallest positive integer that does not occur in a given sequence.
=end

require 'minitest/autorun'

def solution(a)
  min_integer = 1
  a.sort.uniq.each do |val|
    next if val < 1
    if val == min_integer
      min_integer += 1
    else
      break
    end
  end

  return min_integer
end

class MissingIntegerTest < Minitest::Test
  def test_solution
    assert_equal 5, solution([1, 3, 6, 4, 1, 2])
    assert_equal 4, solution([1, 2, 3])
    assert_equal 1, solution([-1, -3])
  end
end
