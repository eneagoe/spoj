# encoding: utf-8
# duplicate input until reading 42
class LifeUniverseEverything
  def self.solve
    loop do
      answer = gets
      break if answer.chomp == "42"
      puts answer
    end
  end
end

LifeUniverseEverything.solve if $PROGRAM_NAME == __FILE__
