#!/usr/bin/env ruby

begin
  at_exit{puts "at_exit"}
  END{puts "END"}
  Signal.trap(:EXIT){puts "Signal.trap"}
ensure
  puts "finally"
end

