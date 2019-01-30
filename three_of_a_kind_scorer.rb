class ThreeOfAKindScorer
  
  def score(roll)
    (trios(roll).max || 0) * 3
  end

  private

  def trios(roll)
    grouped = roll.group_by { |number| number }
    grouped.select { |k,v| v.count >= 3 }.keys
  end

end