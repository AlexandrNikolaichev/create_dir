#!/usr/bin/env ruby
require "json"

def create obj
  name = obj["name"]
  Dir.mkdir(name) if !File.exist?(name)
  Dir.chdir(name) do
    obj["children"].each{|dir| create dir}
    obj["files"].each{|file| File.new(file,'w')}
  end
end

create JSON.parse(IO.read(ARGV[0]))
