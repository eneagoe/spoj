require "test_helper"
require "small_factorials"

describe ".solve" do
  it "computes a list of small factorials" do
    with_stdin("4\n1\n2\n5\n3\n") do
      -> { SmallFactorials.solve }.must_output "1\n2\n120\n6\n"
    end
  end
end
