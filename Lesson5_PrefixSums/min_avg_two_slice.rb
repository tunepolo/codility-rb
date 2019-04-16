=begin
MinAvgTwoSlice
Find the minimal average of any slice containing at least two elements.
=end

require 'minitest/autorun'

def solution(a)
  min_avg = (a[0] + a[1]) / 2.0
  min_avg_index = 0

  (1...a.length-1).each do |index|
    # 2要素の場合と3要素の場合を確認する
    (1..2).each do |slice_size|
      slice = a[index .. index+slice_size]
      avg = slice.inject(0.0) { |sum, val| sum + val } / slice.length

      # puts("index:#{index}, min_avg:#{min_avg}, slice:#{slice}, avg:#{avg}")

      if avg < min_avg
        min_avg = avg
        min_avg_index = index
      end
    end
  end

  return min_avg_index
end

class MinAvgTwoSliceTest < Minitest::Test
  def test_solution
    assert_equal 1, solution([4, 2, 2, 5, 1, 5, 8])
    assert_equal 2, solution([2, 2, 1, 1])
    assert_equal 3, solution([4, -2, 2, -5, 1, 5, -8])
  end
end
