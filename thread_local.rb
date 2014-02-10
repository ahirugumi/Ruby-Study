#!/usr/bin/env ruby

test="test1"

Thread.current[:foo]="foo"

th=Thread.start do
  test="test2"
  puts "sub thread foo: #{Thread.current[:foo]}"
  Thread.current[:foo]="bar"
  puts "sub thread foo: #{Thread.current[:foo]}"
end

th.join

puts "main thread foo: #{Thread.current[:foo]}"
puts "sub thread foo: #{th[:foo]}"
puts "main thread value: #{test}"
