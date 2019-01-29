require "./number_scorer"

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

def score_roll(roll, category)
  scorer = Scorer.for_category(category)
  
  scorer.score(roll)
end

describe "scoring a role in the ones category" do

  context "when no ones where rolled" do
  
    it "scores 0" do
      roll = [2,3,4,5,6]
      category = :ones
  
      score = score_roll(roll, category) 
  
      expect(score).to eq(0)
    end
  
  end

  context "when a single one is rolled" do
    it "scores sum of ones" do
      roll = [1,2,3,4,5]
      category = :ones

      score = score_roll(roll, category)

      expect(score).to eq(1)
    end
  end

  context "when many ones are rolled" do
    it "scores sum of ones" do
      roll = [1,1,1,1,1]
      category = :ones

      score = score_roll(roll, category)

      expect(score).to eq(5)
    end
  end

end


describe "scoring a role in the twos category" do

  context "when no twos where rolled" do
  
    it "scores 0" do
      roll = [3,3,3,3,3]
      category = :twos
  
      score = score_roll(roll, category) 
  
      expect(score).to eq(0)
    end
  
  end

  context "when a single two was rolled" do
  
    it "scores sum of twos" do
      roll = [2,3,4,5,6]
      category = :twos
  
      score = score_roll(roll, category) 
  
      expect(score).to eq(2)
    end
  
  end

  context "when many twos are rolled" do
    it "scores sum of twos" do
      roll = [2,2,2,2,2]
      category = :twos

      score = score_roll(roll, category)

      expect(score).to eq(10)
    end
  end

end