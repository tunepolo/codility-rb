=begin
BinaryGap
Find longest sequence of zeros in binary representation of an integer.

https://app.codility.com/programmers/lessons/1-iterations/binary_gap/
=end

require 'minitest/autorun'

# 1に囲まれている0を正規表現で探す
def solution(n)
  list = n.to_s(2).scan(/1(0+)(?=1)/).flatten.map(&:length)
  list.empty? ? 0 : list.max
end

class BinaryGapTest < Minitest::Test
  def test_solution
    assert_equal 2, solution(9)   # 1001
    assert_equal 4 ,solution(529) # 1000010001
    assert_equal 1, solution(20)  # 10100
    assert_equal 0, solution(15)  # 1111
    assert_equal 0, solution(32)  # 100000
    assert_equal 5, solution(1041) # 10000010001

    assert_equal 2, solution(328) # 101001000
    assert_equal 3, solution(1162) # 10010001010
    assert_equal 9, solution(66561) # 10000010000000001
    assert_equal 4, solution(74901729) # 100011101101110100011100001
    assert_equal 5, solution(1376796946) # 1010010000100000100000100010010
  end
end
