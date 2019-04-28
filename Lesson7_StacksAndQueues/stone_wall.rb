=begin
StoneWall
Cover "Manhattan skyline" using the minimum number of rectangles.
=end

require 'minitest/autorun'

def solution(h)
  stack = []
  stone_count = 0

  h.each do |height|
    # 1. スタックが空の場合は石を新規に積む
    # 2. 壁が高くなる場合は石を新規に積む
    # 3. 過去に同じ高さがあった場合は石を使い回しできる
    # 4. 過去に出てきた壁の高さよりも低く積む場合は石を新規に積む

    # 同じ高さの壁か、過去よりも低い壁を探す
    while !stack.empty? && stack[-1] > height
      stack.pop
    end

    if !stack.empty? && stack[-1] == height
      # Case 3
      next
    else
      # Case 1, 2, 4
      stack.push(height)
      stone_count += 1
    end
  end

  return stone_count
end

class StoneWallTest < Minitest::Test
  def test_solution
    # 値がバラバラ
    assert_equal 3, solution([7, 8, 9])
    assert_equal 3, solution([9, 8, 7])

    # 値が連続する場合
    assert_equal 1, solution([8, 8, 8])
    assert_equal 2, solution([8, 8, 9])
    assert_equal 2, solution([8, 9, 9])
    assert_equal 2, solution([8, 8, 5])

    # 過去に同じ高さがあった場合
    assert_equal 2, solution([5, 8, 5])
    assert_equal 3, solution([8, 8, 5, 8])

    # 例題
    assert_equal 7, solution([8, 8, 5, 7, 9, 8, 7, 4, 8])
  end
end
