class LengthConverter
  UNITS = { m: 1.0, ft: 3.28, in: 39.37 }

  def convert_length(length, from: :m, to: :m)
    (length * (UNITS[to] / UNITS[from])).round(2)
  end
end

