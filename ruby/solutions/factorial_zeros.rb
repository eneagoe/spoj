# encoding: utf-8
# counts number of trailing zeros in a factorial
class FactorialZeros
  def self.solve
    (1..gets.to_i).each do
      n = gets.to_i
      k = (Math.log(n) / Math.log(5)).to_i
      zeros = (1..k).reduce(0) { |a, e| a + (n / 5**e).to_i }
      puts zeros
    end
  end
end

FactorialZeros.solve if $PROGRAM_NAME == __FILE__
