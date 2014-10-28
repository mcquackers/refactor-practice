require "./card"
require "./player"
class Deck
  VALUES = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"]
  SUITS= ["♠","♣", "♥", "♦"]
  HAND_SIZE=5
  def initialize
    @deck = []
  end

  def shuffle
    @deck.shuffle!
  end

  def deal
    @deck.shift(HAND_SIZE)
  end

  def fill_deck
    SUITS.each do |suit|
      VALUES.each do |value|
        @deck.push(Card.new(value, suit))
      end
    end
    @deck.shuffle!
  end
end
