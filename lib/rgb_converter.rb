class RgbConverter
  def to_hex(r, g, b)
    [r, g, b].inject('#') do |accum, current|
      accum + current.to_s(16).rjust(2, '0')
    end
  end

  def to_ints(rgb)
    ints = []

    1.step(rgb.size - 1, 2) do |i|
      ints << rgb[i, 2].to_i(16)
    end

    ints
  end
end
