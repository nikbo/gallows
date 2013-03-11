class Picture
  def initialize
     @head="/ \\               |
    \\ /"
    @neck=" |"
    @arm_1="---"
    @arm_2="---"
    @body="|                |
     |"
     @leg_2="\\"
    @leg_1="/"

  end
  def pic
     puts "
      ________________
    #{@head}               |
    #{@neck}                |
  #{@arm_1}#{@arm_2}              |
     #{@body}                |
    #{@leg_1}#{@leg_2}                |
                      |
                ______|_____

"
  end
end