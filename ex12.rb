print "Giveme a numer: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}"

print "Give me another number: "
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."

print "Give me your bills "
bill = gets.chomp.to_f
change = bill / 10

puts "Your change is #{change}."
