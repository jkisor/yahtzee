class Yahtzee

  def score(dice)
    return 0 if dice.uniq.count != 1

    dice.reduce(0, :+)
  end

end