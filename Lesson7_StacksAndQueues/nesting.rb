=begin
Nesting
Determine whether a given string of parentheses (single type) is properly nested.
=end

require 'minitest/autorun'

def solution(s)
  stack = []
  s.each_char do |c|
    if c == '('
      stack.push(c)
    else
      return 0 if stack.pop != '('
    end
  end

  return stack.empty? ? 1 : 0
end

class NestingTest < Minitest::Test
  def test_solution
    assert_equal 1, solution('(()(())())')
    assert_equal 0, solution('())')
  end
end
