require "./dice"

class TwoPair

  def score(dice)
    dice = Dice.new(dice)

    return 0 if dice.pairs.count < 2

    dice.pairs.map { |number| number * 2 }.reduce(0, :+)
  end

end
