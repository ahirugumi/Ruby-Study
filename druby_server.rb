#!/usr/bin/env ruby

require 'drb'

class Foo
  def test(arg)
    puts arg
  end
end

DRb.start_service('druby://127.0.0.1:5001', Foo.new)
gets
