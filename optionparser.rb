#!/usr/bin/env ruby

require 'optparse'

opt={}
ARGV.options do |o|
  #引数必須
  o.on('-a ADD_STR', '--add ADD_STR'){|x| opt[:add]=x}
  #[]で引数任意
  o.on('-d [DEL_STR]', '--del [DEL_STR]'){|x| opt[:del]=x}
  #オプション引数の取り除き
  o.parse!
end
puts "opt=>#{opt.inspect}, ARGV=>#{ARGV.inspect}"
