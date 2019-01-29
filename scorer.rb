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
    number = NUMBER_BY_CATEGORY.fetch(category)

    NumberScorer.new(number)
  end

end