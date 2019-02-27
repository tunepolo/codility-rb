=begin
PermCheck
Check whether array A is a permutation.
=end

require 'minitest/autorun'

def solution(a)
  a.sort == Array(1..a.length) ? 1 : 0
end

class PermCheckTest < Minitest::Test
  ARRAY_SIZE_MAX = 100000

  def test_solution
    assert_equal 1, solution([4, 1, 3, 2])
    assert_equal 0, solution([4, 1, 3])
    assert_equal 0, solution([1, 1, 2])

    # 適当な配列を使ってテスト
    a = (1..ARRAY_SIZE_MAX).to_a.shuffle
    assert_equal 1, solution(a)
    a.shift
    assert_equal 0, solution(a)
  end
end
