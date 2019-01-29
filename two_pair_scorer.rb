class TwoPairScorer
  
  def score(roll)
    pairs = 
      roll.group_by { |number| number }
        .map { |number, numbers| [number, numbers.count ] }
        .to_h
        .select { |number, count| count >= 2 }
    
    return 0 if pairs.keys.count < 2

    pairs.keys.map { |x| x * 2 }.reduce(0, :+)
  end

end
