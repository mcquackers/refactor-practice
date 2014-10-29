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
      @hotel_data[row["Hotel"]] = {
                                  city: row["City"],
                                  phone: row["Phone Number"],
                                  singles: row["Number of Singles"],
                                  doubles: row["Number of Doubles"],
      }
    end
  end

  def print_data
    @hotel_data.each_key do |name|
      puts(name)
    end
  end
end

data = Hotels.new("hotels.csv")
data.run
