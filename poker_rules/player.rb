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
end
