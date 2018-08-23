

class Round
  attr_reader :deck,
              :guesses,
              :number_correct
  def initialize(deck)
    @deck           = deck
    @guesses        = []
    @number_correct = 0
  end

  def current_card
    @deck.cards.first
  end

  def record_guesses(guess)
    answer = "#{guess[:value]} of #{guess[:suit]}"
    @guesses << Guess.new(answer, current_card)
    num_correct = self.number_correct
    if answer == "#{self.current_card.value} of #{self.current_card.suit}"
      @number_correct += 1
    end
    self.deck.cards.rotate
    @guesses.last
  end

  def count
    @guesses.count
  end

  def feedback
    answer = self.guesses.last.response
    if answer == "#{self.current_card.value} of #{self.current_card.suit}"
      "correct"
    else
      "incorrect"
    end
  end

  def percent_correct
    amount_of_guesses = self.count
    amount_correct = self.number_correct
    (amount_correct / amount_of_guesses) * 100
  end

end
