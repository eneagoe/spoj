# encoding: utf-8
# generates primes between given numbers
class PrimeGenerator
  PrimeNumbers = Enumerator.new do |yielder|
    primes = [2, 3]
    yielder.yield 2
    yielder.yield 3
    i = 3
    loop do
      i += 2
      next if primes.any? { |p| i % p == 0 }
      primes << i
      yielder.yield i
    end
  end
  def self.solve
    (1..gets.to_i).each do
      b, e = gets.split.map(&:to_i)
      puts PrimeNumbers.take_while { |n| n <= e }.select { |n| n >= b }
      puts
    end
  end
end

PrimeGenerator.solve if $PROGRAM_NAME == __FILE__
