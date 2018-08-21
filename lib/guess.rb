require './lib/card'

class Guess

  attr_reader :response,
              :card
  def initialize(response, card)
    @response = response
    @card = card
  end

  def correct?
    if @response == "#{@card.value} of #{@card.suite}"
      true
    else
      false
    end
  end

  def feedback
    if @response == "#{@card.value} of #{@card.suite}"
      "correct!"
    else
      "incorrect!"
    end
  end
end
