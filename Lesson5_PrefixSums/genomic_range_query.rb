=begin
GenomicRangeQuery
Find the minimal nucleotide from a range of sequence DNA.
=end

require 'minitest/autorun'

def solution(s, p, q)
  ret = []

  s_impact_factor = s.tr("ACGT", "1234").split('').map(&:to_i)
  p_length = p.length
  p_length.times do |index|
    ret << s_impact_factor[p[index] .. q[index]].min
  end

  return ret
end

class GenomicRangeQueryTest < Minitest::Test
  def test_solution
    assert_equal [2, 4, 1], solution(
      "CAGCCTA",  # S
      [2, 5, 0], # P
      [4, 5, 6]# Q
    )
  end
end
