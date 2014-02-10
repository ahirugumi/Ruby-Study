#!/usr/bin/env ruby
require 'drb'

remote=DRbObject.new_with_uri('druby://127.0.0.1:5001')
remote.test('hoge')
