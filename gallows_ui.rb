require './lib/picture'
require './lib/words'

words=Words.new
picture=Picture.new(words)
puts "Hi, it's gallows game"
picture.add(words.random)
picture.pic
until picture.ch==1
   puts "Enter your letter"
   player_choice=gets.chomp
   picture.choice(player_choice)
   picture.pic
   picture.check
  end
