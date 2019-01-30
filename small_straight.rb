class SmallStraight

  def score(dice)
    return 0 unless dice.sort == [1,2,3,4,5]
    
    dice.reduce(0, :+)
  end

end
