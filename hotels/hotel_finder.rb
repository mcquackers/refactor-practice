require "./hotel_populator"
class HotelFinder
  def initialize(csv_file_name)
    populator = HotelPopulator.new(csv_file_name)
    @hotel_data = populator.read_and_populate_data
  end

  def print_hotel_names
    puts @hotel_data.keys
  end
  def search(query)
    @hotel_data[query].each do |key, value|
      puts "#{key}: #{value}"
    end
  end
end
