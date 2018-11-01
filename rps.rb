class Game
  attr_reader :user, :consent, :userinput, :computerinput, :choice,
  def initialize()
    @user = user
    @consent = consent
    @userinput = userinput
    @computerinput = computerinput
    @choice = choice
  end

  # taking user name and welcoming him/her
  def start
    puts "Welcome to 'Rock, Paper and scissors' game!"
    puts "Please enter your name."
    @user = gets.chomp.capitalize
    puts "Hey, #{user} are you ready to play? (yes, No)"
    consent = gets.chomp.downcase
    if consent == 'yes'
      puts "Lets start the game"
      gameStart
    elsif consent =='no'
      puts "Do you want to quit?"
    else
      puts "#{user}, This is not the right input. Please enter (yes or no)"
    end
  end

  #game start
  def gameStart
    @choice = ['rock', 'paper', 'scissor']
    puts "Please enter 'Rock or Paper or Scissor'"
    @userinput = gets.chomp.downcase
    puts "Your input #{userinput}"
    @computerinput = @choice.sample
    puts "Computer input is #{computerinput}"

      if @userinput == @computerinput
        puts "it is a draw."
      elsif @userinput =='rock'&& @computerinput =='scissor'
        puts " Congratulations! You Won"
      elsif @userinput == 'rock'&& @computerinput =='paper'
        puts " Opss, You loss"
      elsif @userinput == 'paper'&& @computerinput =='scissor'
        puts " Opss, You loss"
      elsif @userinput == 'paper'&& @computerinput =='rock'
        puts " Congratulations! You Won"
      elsif @userinput == 'scissor'&& @computerinput =='rock'
        puts " Opss, You loss"
      else @userinput == 'scissor'&& @computerinput =='paper'
        puts " Congratulations! You Won"
    end
  end
end # end tag for class

game = Game.new()
puts game.start
