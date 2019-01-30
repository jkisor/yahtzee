class Chance

  def score(dice)
    dice.reduce(0, :+)
  end

end