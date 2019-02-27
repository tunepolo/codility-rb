=begin
FrogJmp
Count minimal number of jumps from position X to Y.
=end

require 'minitest/autorun'

def solution(x, y, d)
  ((y-x)/(d.to_f)).ceil
end

class FrogJmpTest < Minitest::Test
  def test_solution
    assert_equal 3, solution(10, 85, 30)
  end
end
