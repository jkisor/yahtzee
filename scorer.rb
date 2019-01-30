require "./number_scorer"
require "./pair_scorer"
require "./two_pair_scorer"
require "./three_of_a_kind_scorer"
require "./four_of_a_kind_scorer"

class NOfAKindScorer
  
  def initialize(count)
    @count = count
  end

  def score(roll)

    roll = Roll.new(roll)
    
    (roll.n_of_a_kind(@count) || 0) * @count

  end

end

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
    when :two_pair
      TwoPairScorer.new
    when :three_of_a_kind
      NOfAKindScorer.new(3)
    when :four_of_a_kind
      NOfAKindScorer.new(4)
    end

  end

end