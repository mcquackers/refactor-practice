class FairComputer
  ACTIONS = %w(ROCK PAPER SCISSORS)
  def throw_action
    get_action(random_number)
  end

  private
  def random_number
    Random.new.rand(ACTIONS.length)
  end

  def get_action(number_for_action)
    ACTIONS[number_for_action]
  end
end
