class LengthConverter
  def initialize
    @units = { m: 1.0, ft: 3.28, in: 39.37 }
  end

  def convert_length(length, from: :m, to: :m)
    (length * (@units[to] / @units[from])).round(2)
  end
end

