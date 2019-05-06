=begin
CountFactors
Count factors of given number n.
=end

require 'minitest/autorun'
require 'complex'

def solution(n)
  factor_count = 0

  1.upto(Math.sqrt(n)) do |v|
    if n % v == 0
      factor_count += 2
    end
  end

  factor_count -= 1 if Math.sqrt(n) ** 2 == n

  factor_count
end

class CountFactorsTest < Minitest::Test
  def test_solution
    assert_equal 8, solution(24)
    assert_equal 3, solution(25)
  end
end
