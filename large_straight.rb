class LargeStraight

  def score(dice)
    return 0 unless dice.sort == [2,3,4,5,6]
    
    dice.reduce(0, :+)
  end

end
