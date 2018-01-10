# Exercise 40 Modules, Classes, Objects
=begin
Modules : A Ruby file with some functions or variables in it inside
a module .. end block.
You import that file
Yon can access the functions or variables in that module wth the  . dot operator
=end
class Song

  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_me_a_song()
    @lyrics.each {|line| puts line}
  end
end

happy_bday = Song.new(["Happy birthday to You",
  "I don't want to get sued",
  "So I'l stop right there"])

bulls_on_parade = Song.new(["They rally around tha family",
  "With pockets full of sheels"])

happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()

may = ["May it be", "if ..."]

may_it_be = Song.new(may)

may_it_be.sing_me_a_song()
