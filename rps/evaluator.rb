class Evaluator
  LOSERS = {"ROCK" => "PAPER",
            "PAPER" => "SCISSORS",
            "SCISSORS" => "ROCK",
          }
  def initialize(user_choice, ai_choice)
    @user_choice = user_choice
    @ai_choice = ai_choice
  end
  def evaluate
    draw ||
      win_or_lose
  end

  private
  def draw
    if draw?
      "DRAW"
    end
  end

  def draw?
    @user_choice == @ai_choice
  end

  def win_or_lose
    if user_win?
      "USER WINS"
    else
      "COMPUTER WINS"
    end
  end

  def user_win?
    LOSERS[@ai_choice] == @user_choice
  end
end
