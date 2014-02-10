#!/usr/bin/env ruby

require 'thread'

mutex = Mutex.new
foo = []
5.times { |j|
  foo << Thread.start {
    mutex.synchronize {
      ('a'..'c').to_a.each {|i| puts "Thread-#{j}_#{i}"}
    }
  }
}

foo.each {|th| th.join }
