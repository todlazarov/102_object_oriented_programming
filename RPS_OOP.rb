class Player
  attr_accessor :move

  def initialize(player_type = :human)
    @player_type = player_type
    @move = nil
  end

  def human?
    @player_type == :human
  end

  def choose
    if human?
      mv = ''
      loop do
        puts "Choose your option:(rock, paper or scissors)"
        mv = gets.chomp
        break if ['rock', 'paper', 'scissors'].include? mv.downcase
        puts "Invalid input, please choose again."
      end
      self.move = mv
    else
      self.move = ['rock', 'paper', 'scissors'].sample
    end
  end
end

class RPSGame
  attr_accessor :human, :computer

  def initialize
    @human = Player.new
    @computer = Player.new(:computer)
  end

  def display_welcome_message
    puts "Welcome to our Rock, Paper, Scissors game!"
  end

  def display_goodbye_message
    puts "Thank you for playing Rock, Paper, Scissors. Good bye!"
  end

  def display_winner
    puts "You chose: #{human.move}"
    puts "The computer chose: #{computer.move}"

    if human.move == "rock"
      puts "You win!" if computer.move == "scissors"
      puts "Computer wins!" if computer.move == "paper"
      puts "Its a tie!" if computer.move == "rock"
    elsif human.move == "paper"
      puts "You win!" if computer.move == "rock"
      puts "Computer wins!" if computer.move == "scissors"
      puts "Its a tie!" if computer.move == "paper"
    elsif human.move == "scissors"
      puts "You win!" if computer.move == "paper"
      puts "Computer wins!" if computer.move == "rock"
      puts "Its a tie!" if computer.move == "scissors"
    end
  end

  def play_again?
    answer = ''
    loop do
      puts "Would you like to play again?(y/n)"
      answer = gets.chomp
      break if ['y','n'].include? answer
      puts "Sorry, you must pick y or n."
    end

    return true if answer == 'y'
    return false
  end

  def play
    display_welcome_message
    loop do
      human.choose
      computer.choose
      display_winner
      break unless play_again?
    end
    display_goodbye_message
  end
end

RPSGame.new.play