# encoding: utf-8
# multiplies the given sets of numbers
class FastMultiplication
  def self.solve
    (1..gets.to_i).each do
      puts gets.split(" ").map(&:to_i).reduce(:*)
    end
  end
end

FastMultiplication.solve if $PROGRAM_NAME == __FILE__
