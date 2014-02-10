#!/usr/bin/env ruby

require 'rubygems'
require 'test/unit'
require 'mocha/setup'

def hoge(arg)
  piyo(arg)
end

class TestFoo < Test::Unit::TestCase
  def test_hoge
    self.stubs(:piyo).with("test").returns("*test*")
    assert_equal("*test*", hoge("test"))
  end
end
