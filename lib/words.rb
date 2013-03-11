class Words
  attr_reader :word
  def initialize
     @word={1=>"paper", 2=>"mouse", 3=>"computer", 4=>"cat", 5=>"window", 6=>"apple", 7=>"water", 8=>"phone",
     9=>"air"}
  end
  def random
    rand(1..9)
  end
end