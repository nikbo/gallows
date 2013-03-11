class Picture
  attr_accessor :head_1, :head_2, :head_3, :head_4, :head_5, :hand_1, :hand_2, :body_1, :body_2, :left_foot_1, :left_foot_2, :right_foot_1, :right_foot_2
  def initialize
    @head_1="/"
    @head_2="\\"
    @head_3="\\"
    @head_4="/"
    @head_5="|"
    @hand_1="---"
    @hand_2="----"
    @body_1="|"
    @body_2="|"
    @left_foot_1="/"
    @left_foot_2="/"
    @right_foot_1="\\"
    @right_foot_2="\\"
  end
  def pic
    puts "
    ________________
   #{@head_1} #{@head_2}              |
   #{@head_3} #{@head_4}              |
    #{@head_5}               |
 #{@hand_1}#{@hand_2}            |
    #{@body_1}               |
    #{@body_2}               |
   #{@left_foot_1}#{@right_foot_1}               |
  #{@left_foot_2}  #{@right_foot_2}              |
              ______|_____
"

  end
end