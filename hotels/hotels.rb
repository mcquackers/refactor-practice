require "CSV"
class Hotels
  def initialize(file_name)
    @csv = file_name
    @hotel_data = {}
  end

  def run
    read_data
    print_hotel_names
    ask_user_for_query
  end

  private

  def print_hotel_names
    puts @hotel_data.keys
  end

  def read_data
    CSV.foreach(@csv, {headers: true}) do |row|
      populate_hotel_data(row)
    end
  end

  def print_data(hotel_name)
    puts "Supplying data for #{hotel_name}"
    @hotel_data[hotel_name].each do |key, value|
      puts "#{key}: #{value}"
    end
  end

  def ask_user_for_query
    puts "Enter the hotel name for which you which to find data"
    query = gets.chomp
    print_data(query)
  end

  def populate_hotel_data(row_of_data)
     @hotel_data[row_of_data["Hotel"]] = {
                                  city: row_of_data["City"],
                                  phone: row_of_data["Phone Number"],
                                  singles: row_of_data["Number of Singles"],
                                  doubles: row_of_data["Number of Doubles"],
      }
  end
end

data = Hotels.new("hotels.csv")
data.run
