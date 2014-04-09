# encoding: utf-8
# duplicate input until reading 42
def solve
  loop do
    answer = gets
    break if answer.chomp == "42"
    puts answer
  end
end

solve if $PROGRAM_NAME == __FILE__
