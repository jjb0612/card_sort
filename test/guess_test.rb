require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'

class GuessTest < Minitest::Test

  def test_guess_exist
    card = Card.new("King", "Hearts")
    guess = Guess.new("King of Hearts", card)
    assert_instance_of Guess, guess
  end

  def test_if_correct_works
    card = Card.new("King", "Hearts")
    guess = Guess.new("King of Hearts", card)
    guess_1 = Guess.new("Queen of Spades", card)
    assert_equal true, guess.correct?
    assert_equal false, guess_1.correct?
  end

  def test_if_feedback_works
    card = Card.new("King", "Hearts")
    guess = Guess.new("King of Hearts", card)
    guess_1 = Guess.new("Queen of Spades", card)
    assert_equal "correct!", guess.feedback
    assert_equal "incorrect!", guess_1.feedback
  end
end
