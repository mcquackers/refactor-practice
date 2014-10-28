class Round
  ACTIONS = %w(ROCK PAPER SCISSORS)
  def initialize
    @user_choice = ""
    @ai_choice = ""
  end

  def play
    list_actions_to_use
    @user_choice = get_choice_from_user
    @ai_choice = get_ai_action
    battle
    winner = get_winner
    name_winner(winner)
  end

  def battle
    puts "USER SELECTS #{@user_choice}"
    puts "COMPUTER SELECTS #{@ai_choice}"
  end

  def get_ai_action
    FairComputer.new.throw_action
  end

  def get_winner
    Evaluator.new(@user_choice, @ai_choice).evaluate
  end

  def list_actions_to_use
    puts "Choose your weapon!"
    ACTIONS.each_with_index {|action, index| puts "#{index}: #{action}" }
  end

  def get_choice_from_user
    choice = gets.chomp
    ACTIONS[choice.to_i]
  end

  def name_winner(winner)
    puts winner
  end


end
