require "./fair_computer"
require "./evaluator"
class RPSGame
  ACTIONS = %w(ROCK PAPER SCISSORS)
  def initialize
    @ai = FairComputer.new
  end

  def play
    show_greeting
    list_actions_to_use
    user_choice = get_choice_from_user
    ai_choice = @ai.throw_action
    battle(user_choice, ai_choice)
    winner = get_winner(user_choice, ai_choice)
    name_winner(winner)
  end

  private

  def battle(user_choice, ai_choice)
    puts "USER SELECTS #{user_choice}"
    puts "COMPUTER SELECTS #{ai_choice}"
  end
  def show_greeting
    puts "Welcome to Rock Paper Scissors!"
  end

  def get_winner(user_choice, ai_choice)
    Evaluator.new(user_choice, ai_choice).evaluate
  end

  def list_actions_to_use
    puts "Choose your weapon!"
    ACTIONS.each_with_index {|action, index| puts "#{index}: #{action}" }
  end

  def get_choice_from_user
    choice = gets.chomp
    puts ACTIONS[choice.to_i]
    ACTIONS[choice.to_i]
  end

  def name_winner(winner)
    puts winner
  end

end
game = RPSGame.new
game.play
