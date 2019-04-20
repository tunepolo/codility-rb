=begin
CountDiv
Compute number of integers divisible by k in range [a..b].
=end

require 'minitest/autorun'

def solution(a, b, k)
  first_value = -1

  # 割り切れる最初の数を見つける
  (a..b).each do |value|
    if value % k == 0
      first_value = value
      break
    end
  end

  # 割り切れる数が見つからなければ0を返す
  return 0 if first_value < 0

  # first_valからbまでにいくつkが入るかを数える
  return ((b - first_value) / k ) + 1
end

class CountDivTest < Minitest::Test
  def test_solution
    assert_equal 3, solution(6, 11, 2)
    assert_equal 1, solution(10, 10, 5)
    assert_equal 0, solution(10, 10, 20)
  end
end
