=begin
MaxCounters
Calculate the values of counters after applying all alternating operations:
increase counter by 1; set value of all counters to current maximum.
=end

require 'minitest/autorun'

def solution(n, a)
  counter = Array.new(n, 0)
  max_value = 0
  reset_value = n+1

  a.each do |value|
    counter_index = value - 1
    if value != reset_value
      counter[counter_index] += 1
      if counter[counter_index] > max_value
        max_value = counter[counter_index]
      end
    else
      counter = Array.new(n, max_value)
    end
  end

  return counter
end

class MaxCountersTest < Minitest::Test
  def test_solution
    assert_equal [3, 2, 2, 4, 2], solution(5, [3, 4, 4, 6, 1, 4, 4])
  end
end
