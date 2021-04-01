class LengthConverter
  def initialize
    @units = { m: 1.0, ft: 3.28, in: 39.37 }
  end

  def convert_length(length, unit_from, unit_to)
    (length * (@units[unit_to] / @units[unit_from])).round(2)
  end
end

