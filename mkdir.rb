#!/usr/bin/env ruby
require "json"

def create obj
  name = obj["name"]
  Dir.mkdir(name) if !File.exist?(name)
  Dir.chdir(name)
  obj["children"].each{|dir| create dir}
  obj["files"].each{|file| File.new(file,'w')}
  Dir.chdir("..")
end

create JSON.parse(IO.read(ARGV[0]))
Dir.chdir(File.expand_path(File.dirname(__FILE__)))
