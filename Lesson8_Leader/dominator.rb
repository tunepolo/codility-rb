=begin
Dominator
Find an index of an array such that its value occurs at more than half of indices in the array.
=end

require 'minitest/autorun'

def solution(a)
  counts = a.group_by(&:itself).map{|k, v| [k, v.size]}.sort_by{|k, v| -v}
  return -1 if counts.empty?

  value, count = counts[0]
  if count > a.size / 2
    a.find_index(value)
  else
    -1
  end
end

class DominatorTest < Minitest::Test
  def test_solution
    a = [3, 4, 3, 2, 3, -1, 3, 3]
    index = solution(a)
    assert_equal 3, a[index]

    assert_equal -1, solution([1, 2, 3, 4, 5])

    assert_equal 0, solution([1])

    assert_equal -1, solution([])
  end
end
