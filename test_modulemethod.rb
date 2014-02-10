#!/usr/bin/env ruby

require 'test/unit'

module FooModule
  def bar(arg)
    "bar:#{arg}"
  end
end

class TestFooModule < Test::Unit::TestCase
  include FooModule
  #モジュールをテストインクルードしてのテスト
  def test_bar_1
    assert_equal("bar:baz", bar("baz"))
  end
  class Foo
    include FooModule
  end
  def test_bar_2
    assert_equal("bar:baz", Foo.new.bar("baz"))
  end
  def test_bar_3
    foo=Class.new do
      include FooModule
    end
    assert_equal("bar:baz", foo.new.bar("baz"))
  end
end
