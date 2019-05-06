=begin
CountFactors
Count factors of given number n.
=end

require 'minitest/autorun'
require 'complex'

def solution(n)
  factor_count = 0
  n_sqrt = Math.sqrt(n)

  1.upto(n_sqrt) do |v|
    factor_count += 2 if n % v == 0
  end

  factor_count -= 1 if n_sqrt == n_sqrt.to_i

  factor_count
end

class CountFactorsTest < Minitest::Test
  def test_solution
    assert_equal 3, solution(25)
    assert_equal 2, solution(41)

    assert_equal 8, solution(24)
  end
end
