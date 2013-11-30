require 'tempfile'

Tempfile.open("baz") do |f|
  path=f.path
  puts path
  f.puts "test"
  f.close
  #この時点では、まだファイルがある
  puts File.exist? path

  #もう一度開き直す
  f.open
  puts f.read
  #close!か引数trueでテンポラリファイルが削除される
  f.close(true)
  #この時点では、既にない
  puts File.exist? path
end
