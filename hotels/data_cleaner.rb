class DataCleaner
  def initialize
    @standardized_data = {}
  end
  def standardize(row)
    row.keys.each do |key, value|
      @standardized_data[key] = clean(value)
    end 
  end

  private

  def clean(value)
    value.strip!
  end
end
