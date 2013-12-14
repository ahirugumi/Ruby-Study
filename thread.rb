#!/usr/local/bin/ruby
puts "Start main thread"
t1=Thread.start("foo", 3) do |p1, p2|
  puts "Start thread : #{p1}"
  sleep p2
  puts "end thread   : #{p1}"
end
#終了まで待つ
t1.join
puts "End main thread"
