require "./fair_computer"
require "./evaluator"
require "./round"
class RPSGame
  def initialize
    @user_wins = 0
    @total_games = 0
  end
  def play
    show_greeting
    update_stats(Round.new.play)
    print_stats
    ask_replay
  end

  private

  def print_stats
    puts "You have won #{(@user_wins.to_f/@total_games)*100}% of your games"
    puts "(#{@user_wins}/#{@total_games})"
  end
  def update_stats(win_state)
    @total_games += 1
    if win_state == "USER WINS"
        @user_wins += 1
    end
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
