require 'minitest/autorun'
require_relative '../lib/word_synth'
require_relative '../lib/effects/reverse'
require_relative '../lib/effects/echo'
require_relative '../lib/effects/loud'

class WordSynthTest < Minitest::Test
  def setup
    @synth = WordSynth.new
  end

  def test_play_single_effect
    @synth.add_effect(Effects.reverse)
    assert_equal 'ybuR si !nuf', @synth.play('Ruby is fun!')
  end

  def test_play_multiple_effects
    @synth.add_effect(Effects.reverse)
    @synth.add_effect(Effects.echo(2))
    @synth.add_effect(Effects.loud(2))
    assert_equal 'YYBBUURR SSII !!NNUUFF!!', @synth.play('Ruby is fun!')
  end
end