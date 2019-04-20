=begin
CountDiv
Compute number of integers divisible by k in range [a..b].
=end

require 'minitest/autorun'

def solution(a, b, k)
  count = 0

  (a..b).each do |val|
    count += 1 if val % k == 0
  end

  return count
end

class CountDivTest < Minitest::Test
  def test_solution
    assert_equal 3, solution(6, 11, 2)
  end
end
