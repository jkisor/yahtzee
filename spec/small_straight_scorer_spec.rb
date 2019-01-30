require "./small_straight_scorer"

describe SmallStraightScorer do
  
  context "no match" do

    it "" do
      roll = [3,5,6,1,2]
      
      score = subject.score(roll)

      expect(score).to eq(0)
    end

  end
  
end