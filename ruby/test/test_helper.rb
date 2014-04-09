# encoding: utf-8
require "minitest/autorun"
require "stringio"

def with_stdin(input)
  $stdin = StringIO.new(input)
  yield
ensure
  $stdin = STDIN
end

def stdout_from
  output = StringIO.new
  $stdout = output
  yield
  return output.string
ensure
  $stdout = STDOUT
end
