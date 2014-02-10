#!/usr/bin/env ruby

# argfのサンプル

ARGF.each_line do |arg_line|
  puts "#{ARGF.filename} : #{arg_line.chomp} : #{ARGF.file.lineno}"
end
