require "./fair_computer"
require "./evaluator"
require "./round"
class RPSGame
  def initialize
    @user_wins = 0
    @total_rounds = 0
  end
  def play
    show_greeting
    update_stats(Round.new.play)
    ask_replay
  end

  private

  def print_stats
    puts "You have won #{(@user_wins.to_f/@total_rounds)*100}% of your games"
    puts "(#{@user_wins}/#{@total_rounds})"
  end

  def update_stats(result)
    @total_rounds += 1
    if result == "USER WINS"
        @user_wins += 1
    end
    print_stats
  end

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
