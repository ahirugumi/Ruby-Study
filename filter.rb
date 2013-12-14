#!/usr/local/bin/ruby

#Linuxのコマンドパイプのように動作するサンプル

class String
  def filter(args)
    IO.popen(args, "wb+") do |pipe|
      pipe.write self
      pipe.close_write
      pipe.read
    end
  end
end

puts "foo".filter("ruby -e 'puts ARGF.read.upcase'")
puts "   foo   ".filter("ruby -e 'puts ARGF.read.strip'")
