require 'minitest/autorun'
require_relative '../lib/gate'
require_relative '../lib/ticket'

class GateTest < Minitest::Test
  def setup
    @umeda = Gate.new(:umeda)
    @juso = Gate.new(:juso)
    @mikuni = Gate.new(:mikuni)
  end

  def test_from_umeda_to_juso_with_enough_fare
    ticket = Ticket.new(150)

    @umeda.enter(ticket)
    assert @juso.exit(ticket)
  end

  def test_from_umeda_to_mikuni_with_not_enough_fare
    ticket = Ticket.new(150)

    @umeda.enter(ticket)
    refute @mikuni.exit(ticket)
  end

  def test_from_umeda_to_mikuni_with_enough_fare
    ticket = Ticket.new(190)

    @umeda.enter(ticket)
    assert @mikuni.exit(ticket)
  end

  def test_from_juso_to_mikuni_with_enough_fare
    ticket = Ticket.new(150)

    @juso.enter(ticket)
    assert @mikuni.exit(ticket)
  end
end