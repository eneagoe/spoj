# encoding: utf-8
# counts permutations with given number of inversions
# MATH: http://academic.csuohio.edu/bmargolius/homepage/inversions/invers.htm
# http://oeis.org/A008302
class PermutationInversions
  def self.solve
    (1..gets.to_i).each do
      n, k = gets.split.map(&:to_i)
      puts g(n, k)
    end
  end

  def self.g(n, k)
    return 1 if k == 0
    return 0 if n == 1 && k == 1
    return 0 if k < 0 || k > n * (n - 1) / 2
    g(n - 1, k) + g(n, k - 1) - g(n - 1, k - n)
  end
end

PermutationInversions.solve if $PROGRAM_NAME == __FILE__
