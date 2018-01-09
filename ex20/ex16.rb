filename = ARGV.first

puts "We'r going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you want that, hit RETURN."

$stdin.gets.chomp

puts "Opening the file..."
target = open(filename,'w')

puts "Truncating the file. Goodbye!"
target.truncate(0)

puts "Now I'm going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write thses to the file."

newline = "\n"
lines = line1 + newline + line2 + newline + line3 + newline

target.write(lines)
=begin
target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")
=end
puts " And finally, we close it."
target.close
