# encoding: utf-8
require "test_helper"
require "factorial_zeros"

describe ".solve" do
  it "counts the trailing zeros in a list of factorials" do
    with_stdin("6\n3\n60\n100\n1024\n23456\n8735373\n") do
      -> { FactorialZeros.solve }.must_output "0\n14\n24\n253\n"\
                                              "5861\n2183837\n"
    end
  end
end
