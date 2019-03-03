=begin
FrogRiverOne
Find the earliest time when a frog can jump to the other side of a river.
=end

require 'minitest/autorun'

def solution(x, a)
  earliest_time = -1
  position_log = Array.new(x, 0)

  a.each_with_index do |pos, index|
    position_log[pos] = 1
    if position_log.sum == x
      earliest_time = index
      break
    end
  end

  return earliest_time
end

class FrogRiverOneTest < Minitest::Test
  def test_solution
    assert_equal 6, solution(5, [1, 3, 1, 4, 2, 3, 5, 4])
    assert_equal -1, solution(6, [1, 3, 1, 4, 2, 3, 5, 4])
  end
end
