class Hotel
  attr_reader :name, :location, :phone, :singles, :doubles, :rooms
  def initialize(infohash)
    @name = infohash["Hotel"]
    @location = infohash["City"]
    @phone = infohash["Phone Number"]
    @singles = infohash["Number of Singles"]
    @doubles = infohash["Number of Doubles"]
    @rooms = @singles + @doubles
  end
end
