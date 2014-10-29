require "CSV"
class Hotels
  def initialize(file_name)
    @csv = file_name
    @hotel_data = {}
  end

  def run
    read_data
    print_data
  end

  private

  def read_data
    CSV.foreach(@csv, {headers: true}) do |row|
      populate_hotel_data(row)
    end
  end

  def print_data
    @hotel_data.each_key do |name|
      puts(name)
    end
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
