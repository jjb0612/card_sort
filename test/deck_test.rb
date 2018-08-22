require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck'

class DeckTest < Minitest::Test

  def test_deck_exist
    card_1 = Card.new("King", "Hearts")
    card_2 = Card.new("2", "Spades")
    deck = Deck.new([card_1, card_2])
    assert_instance_of Deck, deck
  end

  def test_deck_count_works
    card_1 = Card.new("King", "Hearts")
    card_2 = Card.new("2", "Spades")
    deck = Deck.new([card_1, card_2])
    assert_equal 2, deck.count
  end

end
