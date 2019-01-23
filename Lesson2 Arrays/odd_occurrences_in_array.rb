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

# 配列を走査し、数ごとにカウントしたハッシュを作る。
# ハッシュの値をチェックし、奇数があればそれを返す。
def solution(a)
  h = Hash.new(0)
  a.each do |v|
    h[v.to_s] += 1
  end

  h.each do |key, val|
    return key.to_i if val.odd?
  end
end

class OddOccurrencesInArrayTest < Minitest::Test
  def test_solution
    a = [9, 3, 9, 3, 9, 7, 9]
    assert_equal 7, solution(a)
  end
end
