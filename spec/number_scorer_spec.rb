require "./number_scorer"

describe NumberScorer do

  context "when no occurances of number are rolled" do
  
    it "scores zero" do
      roll = [2,3,4,5,6]
      scorer = NumberScorer.new(1)
  
      score = scorer.score(roll)
  
      expect(score).to eq(0)
    end
  
  end

  context "when a single occurance of number is rolled" do

    it "scores sum of occurances" do
      roll = [1,2,3,4,5]
      scorer = NumberScorer.new(1)

      score = scorer.score(roll)

      expect(score).to eq(1)
    end

  end

  context "when many occurances of number are rolled" do

    it "scores sum of occurances" do
      roll = [1,1,1,1,1]
      scorer = NumberScorer.new(1)

      score = scorer.score(roll)

      expect(score).to eq(5)
    end

  end

end