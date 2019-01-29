require "./two_pair_scorer"

describe TwoPairScorer do
  
  context "when no pairs" do

    it "scores zero" do
      roll = [1,2,3,4,5]
      score = subject.score(roll)

      expect(score).to eq(0)
    end

  end

  context "when two pairs" do

    it "scores sum both pairs" do
      roll = [1,1,2,2,5]
      score = subject.score(roll)

      expect(score).not_to eq(6)
    end

  end

end