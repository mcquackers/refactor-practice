class HotelPopulator
  def initialize(csv_file_name)
    @csv_file_name = csv_file_name
  end

  def read_and_populate_data
    hotel_data = {}
    CSV.foreach(@csv_file_name, {headers: true}) do |row|
      # row_of_data = DataCleaner.new.standardize(row)
      hotel = Hotel.new(row)
      hotel_data[hotel.name] = hotel
    end
    hotel_data
  end
end
