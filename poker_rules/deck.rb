require "./card"
require "./player"
class Deck
  VALUES = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
  SUITS= ["♠","♣", "♥", "♦"]
  HAND_SIZE=5
  def initialize
    @deck = []
  end

  def shuffle
    @deck.shuffle!
  end

  def deal()
   hand = []
   HAND_SIZE.times do
    hand.push(@deck.pop())
   end 
   hand
  end

  def fill_deck
    SUITS.each do |suit|
      VALUES.each do |value|
        @deck.push(Card.new(value, suit))
      end
    end
  end
end

blah = Deck.new
blah.fill_deck
blah.shuffle
player1 = Player.new
player1.hand=blah.deal()
puts(player1.hand)
