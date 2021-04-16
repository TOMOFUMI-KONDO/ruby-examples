require 'minitest/autorun'
require_relative '../lib/effects/reverse'
require_relative '../lib/effects/echo'
require_relative '../lib/effects/loud'

class EffectsTest < Minitest::Test
  def test_reverse
    effect = Effects.reverse
    assert_equal 'ybuR si !nuf', effect.call('Ruby is fun!')
  end

  def test_echo_rate_2
    effect = Effects.echo(2)
    assert_equal 'RRuubbyy iiss ffuunn!!', effect.call('Ruby is fun!')
  end

  def test_echo_rate_3
    effect = Effects.echo(3)
    assert_equal 'RRRuuubbbyyy iiisss fffuuunnn!!!', effect.call('Ruby is fun!')
  end

  def test_loud_1
    effect = Effects.loud(1)
    assert_equal 'RUBY IS FUN!!', effect.call('Ruby is fun!')
  end

  def test_loud_2
    effect = Effects.loud(2)
    assert_equal 'RUBY IS FUN!!!', effect.call('Ruby is fun!')
  end
end