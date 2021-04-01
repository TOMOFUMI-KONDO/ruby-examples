class RgbConverter
  def to_hex(r, g, b)
    rgb = [r, g, b].map { |dec| dec.to_s(16).rjust(2, '0') }.join
    "##{rgb}"
  end

  def to_ints(rgb)
    []
  end
end
