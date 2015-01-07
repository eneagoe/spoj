require "test_helper"
require "permutation_inversions"

describe ".solve" do
  it "counts permutations with given number of inversions" do
    with_stdin("1\n4 1\n") do
      -> { PermutationInversions.solve }.must_output "3\n"
    end
  end
end
