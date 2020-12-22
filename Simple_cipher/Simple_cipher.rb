#!/usr/bin/env ruby

# My method seems to be complex
# but it works nonetheless.
# May find other more straight
# forward solution though.

for arg in ARGV
   file = File.open(arg)

   file_data = file.read

   sanitize = file_data.gsub!(".",".\n")

   paragraph = ""

   sanitize.each_line do |line|
     paragraph << line.strip.split.first
     paragraph << " "
   end

   print paragraph

end
