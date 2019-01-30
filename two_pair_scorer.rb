class TwoPairScorer
  
  def score(roll)

    return 0 if pairs(roll).count < 2

    pairs(roll).map { |x| x * 2 }.reduce(0, :+)
  end

  private

  def pairs(roll)
    grouped = roll.group_by { |number| number }
    grouped.select { |k,v| v.count >= 2 }.keys
  end

end
