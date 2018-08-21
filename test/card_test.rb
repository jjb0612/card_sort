require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'

class CardTest < Minitest::Test

  def test_card_exist
    card = Card.new("King", "Hearts")
    assert_instance_of Card, card
  end

  def test_card_value_exist
    card = Card.new("King", "Hearts")
    assert_equal "King", card.value
  end

  def test_card_suite_exist
    card = Card.new("King", "Hearts")
    assert_equal "Hearts", card.suite
  end
end
