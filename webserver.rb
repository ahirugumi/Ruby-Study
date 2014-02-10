#!/usr/bin/env ruby

require 'webrick'

webserver=WEBrick::HTTPServer.new({:BindAddress=>"127.0.0.1", :Port=>5001, :DocumentRoot=>"."})
Signal.trap(:INT){webserver.shutdown}
webserver.start
