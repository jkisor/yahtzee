class FullHouse

  def score(dice)
    grouped_numbers = dice.group_by { |number| number }
    
    
    pair = grouped_numbers.select { |k,v| v.count == 2 }
    trio = grouped_numbers.select { |k,v| v.count == 3 }

    return 0 if pair.keys.empty? || trio.keys.empty?
    
  end

end
