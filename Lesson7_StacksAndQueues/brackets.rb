=begin
Brackets
Determine whether a given string of parentheses (multiple types) is properly nested.
=end

require 'minitest/autorun'

def solution(s)
  stack = []
  bracket_pair = {
    '}' => '{',
    ']' => '[',
    ')' => '('
  }
  s.each_char do |c|
    if bracket_pair[c]
      last = stack.pop
      if last.nil? || last != bracket_pair[c]
        return 0
      end
    else
      stack.push(c)
    end
  end

  return stack.empty? ? 1 : 0
end

class TriangleTest < Minitest::Test
  def test_solution
    assert_equal 1, solution('{[()()]}')
    assert_equal 0, solution('([)()]')
    assert_equal 0, solution('{{{{')
  end
end
