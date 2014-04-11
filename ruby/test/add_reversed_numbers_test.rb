# encoding: utf-8
require "test_helper"
require "add_reversed_numbers"

describe ".solve" do
  it "returns the reversed sum of reversed numbers" do
    with_stdin("3\n24 1\n4358 754\n305 794\n") do
      -> { AddReversedNumbers.solve }.must_output "34\n1998\n1\n"
    end
  end
end
