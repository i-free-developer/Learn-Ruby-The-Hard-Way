# Exercise 33 While Loops
i = 0
numbers = []
while i < 6
  puts "At the top i is #{i}"
  numbers.push(i)

  i += 1
  puts "Numbers now : ", numbers
  puts "At the bottom i is #{i}"
end

puts "The numbers: "

# remember you can write this 2 other ways?
numbers.each {|num| puts num}

# function to replace the while-loop

def while_loop(start,stop,step)
  numbers = []
  if start < stop
    numbers.push(start)
    puts "Function At the top i is #{start}"
    start = start + step
    puts "Nubers now: ", start
    puts "At the bottom i is #{start}"
  end
end

while_loop(0,6,1)
