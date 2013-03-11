class Picture
  attr_reader :ch
  attr_accessor :head_1, :head_2, :head_3, :head_4, :head_5, :hand_1, :hand_2, :body_1, :body_2, :left_foot_1, :left_foot_2, :right_foot_1, :right_foot_2, :w
  def initialize(words)
    @words=words
    @head_1="/"
    @head_2="\\"
    @head_3="\\"
    @head_4="/"
    @head_5="|"
    @hand_1="----"
    @hand_2="----"
    @body_1="|"
    @body_2="|"
    @left_foot_1="/"
    @left_foot_2="/"
    @right_foot_1="\\"
    @right_foot_2="\\"
    @k=[@a1,@a2,@a3,@a4,@a5,@a6,@a7,@a8,@a9,@a10,@a11,@a12,@a13,@a14,@a15]
    @n=0
    @m=0
    @z=0
    @ch=0
  end
  def pic
    puts "
    ________________
   #{@head_1} #{@head_2}              |
   #{@head_3} #{@head_4}              |
    #{@head_5}               |
 #{@hand_1}#{@hand_2}           |
    #{@body_1}               |
    #{@body_2}               |
   #{@left_foot_1}#{@right_foot_1}               |
  #{@left_foot_2}  #{@right_foot_2}              |
              ______|_____


#{@k[0]} #{@k[1]} #{@k[2]} #{@k[3]} #{@k[4]} #{@k[5]} #{@k[6]} #{@k[7]} #{@k[8]} #{@k[9]} #{@k[10]} #{@k[11]} #{@k[12]} #{@k[13]} #{@k[14]}
"
  end
  def add (ran)
    @ran=ran
    until @n==@words.word[@ran].length
      @k[@n]="--"
      @n+=1
    end
    @n=0
  end
  def choice(player_choice)
    @player_choice=player_choice
    until @z==@words.word[@ran].length
       if @words.word[@ran][@z] == player_choice
          @k[@z]=player_choice
          @m+=1
       end
      @z+=1
    end
    @z=0
    if @m<1 && @left_foot_1!=" " && @left_foot_2!=" "
      puts "There is no such letter!"
      @left_foot_1=" "
      @left_foot_2=" "
    elsif @m<1 && @right_foot_1!=" " && @right_foot_2!=" "
      puts "There is no such letter!"
      @right_foot_1=" "
      @right_foot_2=" "
    elsif @m<1 && @body_1!=" " && @body_2!=" "
      puts "There is no such letter!"
      @body_1=" "
      @body_2=" "
    elsif @m<1 && @hand_1!=" " && @hand_2!=" "
      puts "There is no such letter!"
      @hand_1="       "
      @hand_2=" "
    elsif @m<1 && @head_5!=" "
      @head_1=" "
      @head_2=" "
      @head_3=" "
      @head_4=" "
      @head_5=" "
      pic
      puts "There is no such letter!"
      puts "You are lose!"
      exit
    end
    @m=0
  end
  def check
    if @k[@words.word[@ran].length-1]!="--" && @k[@words.word[@ran].length-2]!="--" && @k[0]!="--"
      @ch=1
      puts"You win!!!"
    end

  end
end