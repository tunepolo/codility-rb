=begin
PassingCars
Count the number of passing cars on the road.
=end

require 'minitest/autorun'

def solution(a)
  east = 0
  west = 0

  a.each do |car|
    if car == 0
      east += 1
    else
      west += east
    end
  end

  return west
end

class PassingCarsTest < Minitest::Test
  def test_solution
    assert_equal 5, solution([0, 1, 0, 1, 1])
  end
end
