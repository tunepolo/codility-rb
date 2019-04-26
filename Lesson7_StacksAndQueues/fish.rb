=begin
Fish
N voracious fish are moving along a river. Calculate how many fish are alive.
=end

require 'minitest/autorun'

def solution(a, b)
  upstream_fish = 0
  downstream_fish = []

  a.each_with_index do |size, index|
    direction = b[index]
    if direction == 1
      downstream_fish.push(size)
    else
      while true
        last = downstream_fish.pop
        if last == nil
          upstream_fish += 1
          break
        elsif last > size
          downstream_fish.push(last)
          break
        end
      end
    end
  end

  upstream_fish + downstream_fish.size
end

class FishTest < Minitest::Test
  def test_solution
    assert_equal 2, solution(
      [4, 3, 2, 1, 5],
      [0 ,1, 0, 0, 0])
  end
end
