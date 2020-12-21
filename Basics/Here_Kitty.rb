#!/usr/bin/env ruby


for arg in ARGV
   file = File.open(arg)

   file_data = file.read

   puts file_data
end
