class TwoPairScorer
  
  def score(roll)
    pairs = roll.group_by { |number| number }.select { |k,v| v.count >= 2 }
    
    pairs.keys.map { |x| x * 2 }.reduce(0, :+)
  end

end
