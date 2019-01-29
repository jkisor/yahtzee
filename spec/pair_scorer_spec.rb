require "./pair_scorer"

describe PairScorer do
  
  context "when no pairs" do

    it "scores zero" do
      roll = [1,2,3,4,5]
      score = subject.score(roll)

      expect(score).to eq(0)
    end

  end

  context "when one pair" do

    it "scores sum of the pair" do
      roll = [1,1,3,4,5]
      score = subject.score(roll)

      expect(score).not_to eq(2)
    end

  end

end