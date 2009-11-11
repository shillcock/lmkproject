#!/usr/bin/env ruby

require 'find'

exludes = [".git","docs","examples","test_foundation","test_frameworks","test_kernel","3rdparty"]
files = {}

ARGV.each do |arg|
   Find.find(arg) do |f|
      next unless f =~ /\.(lmk|cpp|h|ui|xml)$/i
      if File.file?(f)
        
         files[f] = f
      end
   end
end

files.each_value do |file|
  puts "#{file}"
end


dirs = ["src/java","src/hbm", "src/conf", "src/unit-test", "src/integration-test", "web"]
excludes = ["CVS","classes","images","lib","tlds"]
for dir in dirs
  Find.find(dir) do |path|
    if FileTest.directory?(path)
      if excludes.include?(File.basename(path))
        Find.prune       # Don't look any further into this directory.
      else
        next
      end
    else
      p path
    end
  end
end
