require 'pstore'

mydb = PStore.new('my_pstore.db')

mydb.transaction do
  mydb['hoge'] = "hoge"
  mydb['array'] = ['foo', 'bar', 'baz']
end

mydb.transaction(:read_only) do
  puts mydb['hoge']
  puts mydb['array']

  mydb.roots.each {|key|
    puts "#{key}: #{mydb[key]}"
  }
end
