# encoding: utf-8
# display a list of factorials
def solve
  (1..gets.to_i).each { puts((1..gets.to_i).reduce(:*)) }
end

solve if $PROGRAM_NAME == __FILE__
