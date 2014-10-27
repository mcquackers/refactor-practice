class Card
  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def to_s
    @value+@suit
  end
end
