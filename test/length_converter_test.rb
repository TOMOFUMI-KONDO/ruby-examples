require 'minitest/autorun'
require_relative '../lib/length_converter'

class LengthConverterTest < Minitest::Test
  def setup
    @length_converter = LengthConverter.new
  end

  def test_convert_length
    assert_equal 39.37, @length_converter.convert_length(1, :m, :in)
    assert_equal 1, @length_converter.convert_length(39.37, :in, :m)
    assert_equal 0.38, @length_converter.convert_length(15, :in, :m)
    assert_equal 10670.73, @length_converter.convert_length(35000, :ft, :m)
  end
end