require "./fair_computer"
require "./evaluator"
require "./round"
class RPSGame

  def play
    show_greeting
    Round.new.play
    ask_replay
  end

  private

  def ask_replay
    puts "Play another round?  y for yes, anything else for no"
    user_response = gets.chomp
    if replay?(user_response)
      play
    end
  end

  def replay?(user_response)
    user_response == "y"
  end

  def show_greeting
    puts "Welcome to Rock!  Paper!!  SCISSORS!!!!"
  end

end
game = RPSGame.new
game.play
