require 'minitest/autorun'
require_relative '../lib/hash_syntax_converter'

class HashSyntaxConverterTest < Minitest::Unit::TestCase
  def setup
    @hash_syntax_converter = HashSyntaxConverter.new()
  end

  def teardown
    # Do nothing
  end

  def test_convert_hash_syntax
    old_syntax = <<~TEXT
      {
        :name => 'Alice',
        :age=>20,
        :gender  =>  :female
      }
    TEXT
    expected = <<~TEXT
      {
        name: 'Alice',
        age: 20,
        gender: :female
      }
    TEXT
    assert_equal expected, @hash_syntax_converter.convert(old_syntax)
  end
end