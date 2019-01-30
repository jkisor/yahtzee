require "./number"
require "./two_pair"
require "./n_of_a_kind"
require "./small_straight"
class LargeStraight ; end

module Scorer
  SCORER_BY_CATEGORY = {
    :ones   => Number.new(1),
    :twos   => Number.new(2),
    :threes => Number.new(3),
    :fours  => Number.new(4),
    :fives  => Number.new(5),
    :sixes  => Number.new(6),

    :pair            => NOfAKind.new(2),
    :three_of_a_kind => NOfAKind.new(3),
    :four_of_a_kind  => NOfAKind.new(4),

    :two_pair       => TwoPair.new,
    :small_straight => SmallStraight.new,
    :large_straight => LargeStraight.new

  }

  def self.for_category(category)
    SCORER_BY_CATEGORY.fetch(category)
  end

end