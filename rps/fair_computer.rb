class FairComputer
  ACTIONS = %w(ROCK PAPER SCISSORS)
  NUMBER_OF_ACTIONS = 3
  def throw_action
    get_action(random_number)
  end

  private
  def random_number
    Random.new.rand(NUMBER_OF_ACTIONS)
  end

  def get_action(number_for_action)
    ACTIONS[number_for_action]
  end
end
