# encoding: utf-8
# display a list of factorials
class SmallFactorials
  def self.solve
    (1..gets.to_i).each { puts((1..gets.to_i).reduce(:*)) }
  end
end

SmallFactorials.solve if $PROGRAM_NAME == __FILE__
