# encoding: utf-8
# prints the reversed sums of pairs of reversed numbers
class AddReversedNumbers
  def self.solve
    (1..gets.to_i).each do
      puts gets.split(" ").map { |n| n.reverse.to_i }.reduce(:+).
        to_s.reverse.to_i
    end
  end
end

AddReversedNumbers.solve if $PROGRAM_NAME == __FILE__
