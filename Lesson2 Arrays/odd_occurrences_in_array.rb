=begin
OddOccurrencesInArray
Find value that occurs in odd number of elements.

https://app.codility.com/programmers/lessons/2-arrays/odd_occurrences_in_array/
=end

require 'minitest/autorun'

# 同じ値のXORは0になるため、配列の全ての数に対して順にXORをとるとペアにならない数が残す
def solution(a)
  a.reduce(0){ |acc, val| acc ^ val }
end

class OddOccurrencesInArrayTest < Minitest::Test
  def test_solution
    a = [9, 3, 9, 3, 9, 7, 9]
    assert_equal 7, solution(a)
  end
end
