require "./hotel_populator"
require "./null_hotel"
class HotelFinder
  def initialize(csv_file_name)
    populator = HotelPopulator.new(csv_file_name)
    @hotel_data = populator.read_and_populate_data
  end

  def print_hotel_names
    puts @hotel_data.keys
  end

  def search(query)
    hotel = @hotel_data.fetch(query, NullHotel.new(query))
    print_data(hotel)
  end

  private

  def print_data(hotel)
    hotel.each do |key, value|
      puts "#{key}: #{value}"
    end
  end
end
