require "./hand_evaluator"
require "./card"
class Player
  attr_accessor :hand
  def initialize
    @hand = []
  end
  def show_hand
    @hand.each do |card|
      puts(card)
    end
  end

  def hand_value
    puts(HandEvaluator.new(@hand).find_high_hand)
  end
end
