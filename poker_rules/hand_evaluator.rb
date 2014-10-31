require "./card"
class HandEvaluator
  VALUES = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"]
  def initialize(hand)
    @hand = hand.sort_by!(&:value)
    @hand_values = @hand.map(&:value).sort
    @hand_suits = @hand.map(&:suit)
    @hand_points = []
  end

  def find_high_hand
    multicheck ||
      straight_flush ||
      straight? ||
      flush? ||
      high_card
  end

  private

  def high_card
    "High Card! #{@hand.last}"
  end

  def multicheck
    VALUES.each do |value|
      if(@hand_values.grep(value).length > 1)
        multi(@hand_values.grep(value))
      end
    end
    multiend
  end

  def multi(matching_cards)
    @hand_points.concat(matching_cards)
  end

  def multiend
    full_house? ||
    four_of_kind? ||
    three_of_kind? ||
    two_pair? ||
    pair?
  end

  def full_house?
    if @hand_points.length == 5
      "Full House!"
    end
  end

  def four_of_kind?
    if @hand_points.length == 4 && @hand_points.uniq.length == 1
      "Four of a kind!"
    end
  end

  def three_of_kind?
    if @hand_points.length == 3
      "Three of a kind!"
    end
  end

  def two_pair?
    if @hand_points.length == 4 && @hand_points.uniq.length == 2
      "Two pair!"
    end
  end

  def pair?
    if @hand_points.length == 2
      "Pair!"
    end
  end
  
  def straight_flush
    if straight? && flush?
      "Straight flush"
    end
  end

  def straight?
    if @hand_values.uniq.length == 5 &&
        @hand_values.max.to_i - @hand_values.min.to_i == 4
      "Straight!  #{@hand_values.min} to #{@hand_values.max}"
    end
  end

  def flush?
    if @hand_suits.uniq.length == 1
      "Flush"
    end
  end
end
