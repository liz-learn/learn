#!/usr/bin/ruby
puts "How many variable did you put in?" 
amt = STDIN.gets.chomp.to_i
if amt == ARGV.length
	puts "array length == #{amt}"
elsif amt < ARGV.length
	puts "array length > #{amt}"
else
	puts "array length < #{amt}"
end
puts "input paramaters were as follows:"
ARGV.each do |arg|
	puts arg
end		