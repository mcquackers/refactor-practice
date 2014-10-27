require "./deck"
require "./player"
class PokerGame
  NUMBER_OF_PLAYERS = 4
  def initialize
    @deck = Deck.new
    @players = []
  end

  def deal_hands
    @players.each do |player|
      player.hand = @deck.deal
    end
  end

  def prepare_game
    generate_players
    @deck.fill_deck
  end

  def show_hands
    @players.each_with_index do |player, index|
      puts("Player #{index+1}'s hand:")
      player.show_hand
    end
  end

  private

  def generate_players
    NUMBER_OF_PLAYERS.times do
      @players.push(Player.new)
    end
  end

end

game = PokerGame.new
game.prepare_game
game.deal_hands
game.show_hands
