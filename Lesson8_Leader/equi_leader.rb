=begin
EquiLeader
Find the index S such that the leaders of the sequences A[0], A[1], ..., A[S] and A[S + 1], A[S + 2], ..., A[N - 1] are the same.
=end

require 'minitest/autorun'

def solution(a)
  # 出現数をカウント
  count = a.group_by(&:itself).map{|k, v| [k, v.size]}.sort_by{|k, v| -v}

  # leaderがなければ0を返す
  leader, leader_total_number = count[0]
  if leader_total_number < a.size / 2
    return 0
  end

  equi_leader_count = 0
  leader_appears = 0
  left_group = 0
  right_group = a.size

  # 配列を先頭からなぞり、左側と右側がequi leaderの条件を満たす数を数える
  a.each do |value|
    leader_appears += 1 if value == leader
    left_group += 1
    right_group -= 1

    left_group_check = (leader_appears > left_group / 2)
    right_group_check =  ((leader_total_number - leader_appears) > right_group / 2)

    if left_group_check && right_group_check
      equi_leader_count += 1
    end
  end

  equi_leader_count
end

class EquilLeaderTest < Minitest::Test
  def test_solution
    assert_equal 2, solution([4, 3, 4, 4, 4, 2])
  end
end
