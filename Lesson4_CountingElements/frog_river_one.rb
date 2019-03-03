=begin
FrogRiverOne
Find the earliest time when a frog can jump to the other side of a river.
=end

require 'minitest/autorun'

def solution(x, a)
  position_log = Array.new(x+1, 0)
  position_log_sum = 0

  a.each_with_index do |pos, index|
    position_log
    if position_log[pos] == 0
      position_log[pos] = 1
      position_log_sum += 1
    end

    if position_log_sum == x
      return index
    end
  end

  return -1
end

class FrogRiverOneTest < Minitest::Test
  def test_solution
    assert_equal 6, solution(5, [1, 3, 1, 4, 2, 3, 5, 4])
    assert_equal -1, solution(6, [1, 3, 1, 4, 2, 3, 5, 4])
  end
end
