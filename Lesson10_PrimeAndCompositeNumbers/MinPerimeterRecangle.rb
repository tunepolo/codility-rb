=begin
MinPerimeterRectangle
Find the minimal perimeter of any rectangle whose area equals N.
=end

require 'minitest/autorun'
require 'complex'

def solution(n)
  min_perimeter = 10_000_000_000
  check_limit = Math.sqrt(n).floor

  1.upto(n) do |side_1|
    next if n % side_1 != 0
    side_2 = n / side_1

    perimeter = (side_1 + side_2) * 2
    min_perimeter = perimeter if perimeter < min_perimeter
  end

  return min_perimeter
end

class MinPerimeterRectangleTest < Minitest::Test
  def test_solution
    assert_equal 22, solution(30)
  end
end
