# encoding: utf-8
# models a simple arithmetic expression
class Expression
  attr_accessor :a, :b, :op
  def initialize(a, op, b)
    @a, @b, @op = a, b, op
  end

  def value
    @value ||= a.to_i.send(op, b.to_i)
  end

  def op_length
    @len ||= [a.length, b.length + 1].max
  end

  def result_length
    @result_length ||= value.to_s.length
  end

  def max_length
    [op_length, result_length].max
  end

  def show_operands
    puts [a.rjust(max_length), (op + b).rjust(max_length)].join("\n")
    separator =
      if op == "*"
        "-" * [b.length + 1, ((b.to_i % 10) * a.to_i).to_s.length].max
      else
        "-" * [b.length + 1, result_length].max
      end
    puts separator.rjust(max_length)
  end

  def show_partials
    return unless op == "*" && b.length > 1
    b.reverse.split(//).each_with_index do |d, i|
      v = a.to_i * d.to_i
      puts v.to_s.rjust(max_length - i)
    end
    puts ("-" * result_length).rjust(max_length)
  end

  def to_s
    show_operands
    show_partials
    puts value.to_s.rjust([op_length, result_length].max)
  end
end

# 'manually' computes simple arithmetic operations
class SimpleArithmetic
  def self.solve
    (1..gets.to_i).each do
      gets.chomp.match(/(\d+)(.)(\d+)/)
      puts Expression.new(Regexp.last_match[1],
                          Regexp.last_match[2],
                          Regexp.last_match[3]).to_s
    end
  end
end

SimpleArithmetic.solve if $PROGRAM_NAME == __FILE__
