require "./number"
require "./two_pair"
require "./n_of_a_kind_scorer"
require "./small_straight"

module Scorer
  SCORER_BY_CATEGORY = {
    :ones   => Number.new(1),
    :twos   => Number.new(2),
    :threes => Number.new(3),
    :fours  => Number.new(4),
    :fives  => Number.new(5),
    :sixes  => Number.new(6),

    :pair            => NOfAKindScorer.new(2),
    :three_of_a_kind => NOfAKindScorer.new(3),
    :four_of_a_kind  => NOfAKindScorer.new(4),

    :two_pair       => TwoPair.new,
    :small_straight => SmallStraight.new

  }

  def self.for_category(category)
    SCORER_BY_CATEGORY.fetch(category)
  end

end