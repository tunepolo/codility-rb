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

# ハッシュを使ってチェック表を作る。なければキーを作成、あればキーを削除。
# 最終的にキーが1つだけ残っているはずなのでその値を返す
def solution(a)
  h = {}
  a.each do |v|
    if h.has_key?(v)
      h.delete(v)
    else
      h[v] = 1
    end
  end

  h.keys.first.to_i
end

class OddOccurrencesInArrayTest < Minitest::Test
  def test_solution
    a = [9, 3, 9, 3, 9, 7, 9]
    assert_equal 7, solution(a)
  end
end
