require 'minitest/autorun'
require_relative '../lib/team'
require_relative '../lib/bank'

class DeepFreezableTest < Minitest::Test
  def test_deep_freeze_for_array
    assert_equal %w[Japan US India], Team::COUNTRIES
    assert Team::COUNTRIES.frozen?
    assert Team::COUNTRIES.all?(&:frozen?)
  end

  def test_deep_freeze_for_hash
    assert_equal(
      { 'Japan' => 'yen', 'US' => 'dollar', 'India' => 'ruppe' },
      Bank::CURRENCIES
    )
    assert Bank::CURRENCIES.frozen?
    assert Bank::CURRENCIES.all? { |key, value| key.frozen? && value.frozen? }
  end
end