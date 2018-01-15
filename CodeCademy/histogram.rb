# puts out the frequencies of words from input sectences
puts " Pls enter anything thing you like"
text = gets.chomp
words = text.split(" ")
frequencies = Hash.new (0)

words.each {
  |word|
  frequencies[word] += 1
  }

frequencies = frequencies.sort_by do |word, fre|
  fre
end
frequencies.reverse!

frequencies.each do |word, fre|
  puts "The frequencies of the words in your sectences in decending order is > "
  puts word + " " + fre.to_s
end
