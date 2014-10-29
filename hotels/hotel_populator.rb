class HotelPopulator
  def initialize(csv_file_name)
    @csv_file_name = csv_file_name
  end

  def read_and_populate_data
    hotel_data = {}
    CSV.foreach(@csv_file_name, {headers: true}) do |row_of_data|
      hotel_data[row_of_data["Hotel"]] = {
        city: row_of_data["City"],
        phone: row_of_data["Phone Number"],
        singles: row_of_data["Number of Singles"],
        doubles: row_of_data["Number of Doubles"],
      }
    end
    hotel_data
  end


  def print_data(hotel_name)
    puts "Supplying data for #{hotel_name}"
    @hotel_data[hotel_name].each do |key, value|
      puts "#{key}: #{value}"
    end
  end
end
