class FullHouse

  def score(dice)
    grouped_numbers = dice.group_by { |number| number }
    
    trio = grouped_numbers.select { |k,v| v.count == 3 }
    pair = grouped_numbers.select { |k,v| v.count == 2 }

    return 0 if pair.keys.empty? || trio.keys.empty?

    ((trio.keys.max || 0) * 3) + ((pair.keys.max || 0) * 2)
  end

end
