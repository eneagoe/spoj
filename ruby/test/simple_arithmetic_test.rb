# encoding: utf-8
require "test_helper"
require "simple_arithmetic"

describe ".solve" do
  it "'manually' computes simple arithmetic operations" do
    with_stdin("4\n12345+67890\n324-111\n325*4405\n1234*4\n") do
      -> { SimpleArithmetic.solve }.must_output(
        " 12345\n+67890\n------\n 80235\n\n"\
        " 324\n-111\n----\n 213\n\n"\
        "    325\n  *4405\n  -----\n   1625\n     0\n 1300\n1300\n"\
        "-------\n1431625\n\n"\
        "1234\n  *4\n----\n4936\n\n")
    end
  end
end
