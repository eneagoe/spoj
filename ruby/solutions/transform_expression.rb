# encoding: utf-8
# transforms given expressions into reverse Polish notation
class TransformExpression
  OPS = "+-*/^"
  def self.solve
    (1..gets.to_i).each do
      line = gets
      operators, solution = [], []
      line.each_char do |ch|
        next if ch == "("
        operators.push(ch) and next if OPS.include?(ch)
        solution.push(operators.pop) and next if ch == ")"
        solution.push ch
      end
      puts solution.join
    end
  end
end

FastMultiplication.solve if $PROGRAM_NAME == __FILE__
