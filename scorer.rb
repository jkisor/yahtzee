require "./number_scorer"
require "./pair_scorer"

module Scorer
  
  NUMBER_BY_CATEGORY = { 
    :ones   => 1, 
    :twos   => 2,
    :threes => 3,
    :fours  => 4,
    :fives  => 5,
    :sixes  => 6
  }

  def self.for_category(category)

    case category
    when *NUMBER_BY_CATEGORY.keys
      number = NUMBER_BY_CATEGORY.fetch(category)

      NumberScorer.new(number)
    when :pair
      PairScorer.new
    end

  end

end