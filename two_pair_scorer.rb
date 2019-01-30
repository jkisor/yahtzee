class TwoPairScorer
  
  def score(roll)

    return 0 if pairs(roll).count < 2

    pairs(roll).map { |x| x * 2 }.reduce(0, :+)
  end

  private

  def pairs(roll)
    roll.group_by { |number| number }
        .map { |number, numbers| [number, numbers.count ] }
        .to_h
        .select { |number, count| count >= 2 }
        .keys
  end

end
