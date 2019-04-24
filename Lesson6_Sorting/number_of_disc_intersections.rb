=begin
NumberOfDiscIntersections
Compute the number of intersections in a sequence of discs.
=end

require 'minitest/autorun'

def solution(a)
  # 生存区間を生成
  # keyが円の中心座標、startが円の左端、endが円の右端
  circle_stat = Hash.new{ |h, k| h[k] = { start: 0, end: 0 } }
  a.each_with_index do |radius, index|
    circle_stat[index - radius][:start] += 1
    circle_stat[index + radius][:end] += 1
  end

  # 生存区間をソートし、active数から交差する円の数を数える
  count = 0
  active = 0
  Hash[circle_stat.sort].each do |index, stat|
    # 生存区間の終了に合わせてactiveな数を増やす
    active += stat[:start]
    stat[:end].times do
      active -= 1
      count += active

      return -1 if count > 10_000_000
    end

    # puts "index:#{index} ,stat:#{stat}, active:#{active}, count:#{count}"
  end

  count
end

class NumberOfDiscIntersectionsTest < Minitest::Test
  def test_solution
    assert_equal 11, solution([1, 5, 2, 1, 4, 0])
    assert_equal 3, solution([1, 1, 1])
  end
end
