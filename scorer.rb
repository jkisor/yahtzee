require "./number_scorer"
require "./two_pair_scorer"
require "./n_of_a_kind_scorer"
require "./small_straight_scorer"

module Scorer
  SCORER_BY_CATEGORY = {
    :ones   => NumberScorer.new(1),
    :twos   => NumberScorer.new(2),
    :threes => NumberScorer.new(3),
    :fours  => NumberScorer.new(4),
    :fives  => NumberScorer.new(5),
    :sixes  => NumberScorer.new(6),

    :pair            => NOfAKindScorer.new(2),
    :three_of_a_kind => NOfAKindScorer.new(3),
    :four_of_a_kind  => NOfAKindScorer.new(4),

    :two_pair       => TwoPairScorer.new,
    :small_straight => SmallStraightScorer.new

  }

  def self.for_category(category)
    SCORER_BY_CATEGORY.fetch(category)
  end

end