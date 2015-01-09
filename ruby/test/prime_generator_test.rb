# encoding: utf-8
require "test_helper"
require "prime_generator"

describe ".solve" do
  it "prints all primes between given numbers" do
    with_stdin("2\n1 10\n3 5\n") do
      -> { PrimeGenerator.solve }.must_output "2\n3\n5\n7\n\n3\n5\n\n"
    end
  end
end
