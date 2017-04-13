#!/usr/bin/env ruby

trap :INT do
  puts "\nTrapped!!"
  exit
end

loop do
  sleep 3
end

