=begin
OddOccurrencesInArray
Find value that occurs in odd number of elements.

https://app.codility.com/programmers/lessons/2-arrays/odd_occurrences_in_array/
=end

=begin
BinaryGap
Find longest sequence of zeros in binary representation of an integer.

https://app.codility.com/programmers/lessons/1-iterations/binary_gap/
=end

require 'minitest/autorun'

def solution(a)
  return 0
end

class OddOccurrencesInArrayTest < Minitest::Test
  def test_solution
    a = [9, 3, 9, 3, 9, 7, 9]
    assert_equal 7, solution(a)
  end
end
