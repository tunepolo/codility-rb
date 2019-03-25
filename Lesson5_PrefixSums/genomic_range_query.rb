=begin
GenomicRangeQuery
Find the minimal nucleotide from a range of sequence DNA.
=end

require 'minitest/autorun'

def solution(s, p, q)
  ret = []

  # 文字列をスキャンして、出現数を数える
  a, c, g, t = 0, 0, 0, 0
  occurrence_count = []
  occurrence_count << [a, c, g, t]
  s.each_char do |char|
    case char
    when 'A'
      a += 1
    when 'C'
      c += 1
    when 'G'
      g += 1
    when 'T'
      t += 1
    end
    occurrence_count << [a, c, g, t]
  end

  m = p.length
  m.times do |index|
    from = occurrence_count[p[index]]
    to = occurrence_count[q[index]+1]

    if to[0] - from[0] > 0
      ret << 1
    elsif to[1] - from[1] > 0
      ret << 2
    elsif to[2] - from[2] > 0
      ret << 3
    else
      ret << 4
    end
  end

  return ret
end

class GenomicRangeQueryTest < Minitest::Test
  def test_solution
    assert_equal [2, 4, 1], solution("CAGCCTA", [2, 5, 0], [4, 5, 6])

    assert_equal [1], solution("A", [0], [0])
    assert_equal [2], solution("C", [0], [0])
    assert_equal [3], solution("G", [0], [0])
    assert_equal [4], solution("T", [0], [0])

    assert_equal [1, 1], solution("AC", [0, 0], [0, 1])
    assert_equal [3, 4], solution("GT", [0, 1], [1, 1])
  end
end
