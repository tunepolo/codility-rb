=begin
PermMissingElem
Find the missing element in a given permutation.
=end

require 'minitest/autorun'

# 配列同士の引き算で要素を探す
def solution(a)
  ((1..a.max).to_a - a).first
end

# 配列内の値の和を引き算することで要素を探す
def solution2(a)
  (1..a.max).sum - a.sum
end

class PermMissingElemTest < Minitest::Test
  ARRAY_SIZE_MAX = 100000

  def test_solution
    assert_equal 4, solution([2, 3, 1, 5])

    # 適当な配列を使ってテスト
    a = (1..ARRAY_SIZE_MAX).to_a.shuffle
    answer = a.shift
    assert_equal answer, solution(a)
  end

  def test_solution2
    assert_equal 4, solution2([2, 3, 1, 5])

    # 適当な配列を使ってテスト
    a = (1..ARRAY_SIZE_MAX).to_a.shuffle
    answer = a.shift
    assert_equal answer, solution(a)
  end
end
