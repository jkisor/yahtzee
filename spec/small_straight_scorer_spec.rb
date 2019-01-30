require "./small_straight_scorer"

describe SmallStraightScorer do
  
  context "no match" do

    it "scores zero" do
      roll = [3,5,6,1,2]
      
      score = subject.score(roll)

      expect(score).to eq(0)
    end

  end

  context "match" do

    it "scores sum of die" do
      roll = [1,2,3,4,5]
      
      score = subject.score(roll)

      expect(score).to eq(15)
    end

  end
end