# encoding: utf-8
require "test_helper"
require "life_universe_everything"

describe ".solve" do
  it "duplicates input until reading 42" do
    with_stdin("1\n2\n88\n42\n99\n") do
      -> { LifeUniverseEverything.solve }.must_output "1\n2\n88\n"
    end
  end
end
