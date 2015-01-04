# encoding: utf-8
require "test_helper"
require "fast_multiplication"

describe ".solve" do
  it "multiplies the given lists of numbers" do
    with_stdin("4\n4 2\n123 43\n324 342\n0 12\n") do
      -> { FastMultiplication.solve }.must_output "8\n5289\n110808\n0\n"
    end
  end
end
