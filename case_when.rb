movies = {
  'sexycity' => 3,
  'Lord' => 4,
  }

puts "what is your choice"
choice = gets.chomp
case choice
  when "add"
    puts "Added!"
  when "update"
    puts "Updated!"
  when "display"
   puts "Movies!"
  when "delete"
    puts "Deleted!"
  else
    puts "Error!"
end
