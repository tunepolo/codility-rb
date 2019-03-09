=begin
MaxCounters
Calculate the values of counters after applying all alternating operations:
increase counter by 1; set value of all counters to current maximum.
=end

require 'minitest/autorun'

def solution(n, a)
  counter = Array.new(n, 0)
  current_max_value = 0
  last_reset_max_value = 0
  reset_value = n+1

  a.each do |value|
    counter_index = value - 1

    if value != reset_value
      if counter[counter_index] < last_reset_max_value
        counter[counter_index] = last_reset_max_value
      end

      counter[counter_index] += 1
      if counter[counter_index] > current_max_value
        current_max_value = counter[counter_index]
      end
    else
      last_reset_max_value = current_max_value
    end

     counter
  end

  counter.each_with_index do |value, index|
    if value < last_reset_max_value
      counter[index] = last_reset_max_value
    end
  end

  return counter
end

class MaxCountersTest < Minitest::Test
  def test_solution
    assert_equal [3, 2, 2, 4, 2], solution(5, [3, 4, 4, 6, 1, 4, 4])
  end
end
