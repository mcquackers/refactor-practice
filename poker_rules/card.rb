class Card
  attr_reader :value, :suit
  def initialize(value, suit)
    @value = value
    @suit = suit
    @value_mapping = {"11" => "J",
                      "12" => "Q",
                      "13" => "K",
                      "14" => "A", }
  end

  def to_s
    "#{puts_pretty(@value)}#{@suit}"
  end

  private

  def puts_pretty(value)
    @value_mapping[value] || @value
  end
end
