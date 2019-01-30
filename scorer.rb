require "./number_scorer"
require "./two_pair_scorer"
require "./n_of_a_kind_scorer"

module Scorer
  
  NUMBER_BY_CATEGORY = { 
    :ones   => 1, 
    :twos   => 2,
    :threes => 3,
    :fours  => 4,
    :fives  => 5,
    :sixes  => 6
  }

  COUNT_BY_CATEGORY = {
    :pair            => 2,
    :three_of_a_kind => 3,
    :four_of_a_kind  => 4
  }

  def self.for_category(category)

    case category
    when *NUMBER_BY_CATEGORY.keys
      number = NUMBER_BY_CATEGORY.fetch(category)

      NumberScorer.new(number)
    when *COUNT_BY_CATEGORY.keys
      n = COUNT_BY_CATEGORY.fetch(category)

      NOfAKindScorer.new(n)
    when :two_pair
      TwoPairScorer.new
    when :three_of_a_kind
      NOfAKindScorer.new(3)
    when :four_of_a_kind
      NOfAKindScorer.new(4)
    end

  end

end