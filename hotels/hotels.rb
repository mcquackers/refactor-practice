require "CSV"
require "./hotel_finder.rb"
class Hotels
  def initialize(csv_file_name)
    @finder = HotelFinder.new(csv_file_name)
  end

  def run
    print_hotel_names
    query = ask_user_for_query
    print_query_response(query)
  end

  private

  def print_query_response(query)
    @finder.search(query)
  end

  def print_hotel_names
    @finder.print_hotel_names
  end

  def ask_user_for_query
    puts "Enter the hotel name for which you which to find data"
    gets.chomp
  end

end
data = Hotels.new("hotels.csv")
data.run
