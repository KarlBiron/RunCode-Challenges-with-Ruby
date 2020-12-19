#!/usr/bin/env ruby

for arg in ARGV
   file = File.open(arg)

   file_data = file.read

   # gsub: "g" stands for global
   # and "sub" stands for substite
   # Alternative solution is the .delete
   # Ruby method as shown below:
   # a = "\tI have some whitespaces.\t"
   # a.delete!(" ")     #=>  "\tIhavesomewhitespaces.\t"
   sanitized = file_data.gsub(" ","")

   # The H used with the pack method gives
   # you a hex number to string conversion.
   result = [sanitized].pack("H*")

   puts result
end
