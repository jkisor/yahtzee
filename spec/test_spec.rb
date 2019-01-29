class NumberScorer
  
  def initialize(number)
    @number = number
  end

  def score(roll)
    roll.select { |x| x == @number }.reduce(0, :+)
  end

end

module Scorer

  def self.for_category(category)
    number_by_category = { :ones => 1, :twos => 2 }

    number = number_by_category.fetch(category)
    NumberScorer.new(number)
  end

end

def score_roll(roll, category)
  scorer = Scorer.for_category(category)
  
  scorer.score(roll)
end



def numbers_category_score(roll, number)
  roll.select { |x| x == number }.reduce(0, :+)
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