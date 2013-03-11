require './lib/picture'
require './lib/words'
require './lib/check'

words=Words.new
check=Check.new
picture=Picture.new(words)
puts "Hi, it's gallows game"
picture.add(words.random)
picture.pic
puts "Enter your letter"
player_choice=gets.chomp
picture.choice(player_choice)
picture.pic
