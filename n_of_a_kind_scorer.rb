class NOfAKindScorer
  
  def initialize(count)
    @count = count
  end

  def score(roll)

    roll = Roll.new(roll)
    
    (roll.n_of_a_kind(@count).max || 0) * @count

  end

end