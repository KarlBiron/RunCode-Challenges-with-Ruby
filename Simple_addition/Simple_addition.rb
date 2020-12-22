#!/usr/bin/env ruby


for arg in ARGV
  file = File.open(arg)

  file.each_line do |line|

    # The "if" statement below catches any numbers
    # that are in the form of a decimal and convert
    # them into a float format.

    # puts 'abcdefg'.start_with?('abc')  #=> true
    if line.start_with?('.')
      line.gsub!(" ","+")
      line.gsub!(".","0.")
      puts eval line
    else

    line.gsub!(" ","+")
    #puts line
    puts eval line
    end
  end

end
