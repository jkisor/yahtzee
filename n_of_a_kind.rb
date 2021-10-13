class NOfAKind

  def initialize(count)
    @count = count
  end

  def score(dice)

    dice = Dice.new(dice)

    (dice.n_of_a_kind(@count).max || 0) * @count

  end

end