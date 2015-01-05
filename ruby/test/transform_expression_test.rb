# encoding: utf-8
require "test_helper"
require "transform_expression"

describe ".solve" do
  it "transforms expressions into reverse Polish notation" do
    with_stdin("3\n(a+(b*c))\n((a+b)*(z+x))\n((a+t)*((b+(a+c))^(c+d)))\n") do
      -> { TransformExpression.solve }.must_output "abc*+\nab+zx+*\n"\
                                                   "at+bac++cd+^*\n"
    end
  end
end
