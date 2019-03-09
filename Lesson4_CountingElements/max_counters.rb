=begin
MaxCounters
Calculate the values of counters after applying all alternating operations:
increase counter by 1; set value of all counters to current maximum.
=end

require 'minitest/autorun'

def solution(n, a)
  counter = Array.new(n, 0)

  a.each do |value|
    if value != (n+1)
      counter[value-1] += 1
    else
      counter = Array.new(n, counter.max)
    end
  end

  return counter
end

class MaxCountersTest < Minitest::Test
  def test_solution
    assert_equal [3, 2, 2, 4, 2], solution(5, [3, 4, 4, 6, 1, 4, 4])
  end
end
