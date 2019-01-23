=begin
BinaryGap
Find longest sequence of zeros in binary representation of an integer.

https://app.codility.com/programmers/lessons/1-iterations/binary_gap/
=end

require 'minitest/autorun'

def solution(n)
  return 0
end

class BinaryGapTest < Minitest::Test
  def test_solution
    assert_equal 2, solution(9)   # 1001
    assert_equal 4 ,solution(529) # 1000010001
    assert_eaual 1, solution(20)  # 10100
    assert_equal 0, solution(15)  # 1111
    assert_equal 0, solution(32)  # 100000
    assert_equal 5, solution(1041) # 10000010001
  end
end
