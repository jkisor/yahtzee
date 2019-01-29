require "./two_pair_scorer"

describe TwoPairScorer do
  
  context "when no pairs" do

    it "scores zero" do
      roll = [1,2,3,4,5]
      score = subject.score(roll)

      expect(score).to eq(0)
    end

  end

end