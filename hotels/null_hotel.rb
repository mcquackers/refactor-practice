class NullHotel
  def initialize(hotel_name)
    @hotel_name = hotel_name
  end

  def each
    puts "#{@hotel_name} is not a valid hotel"
  end
end
