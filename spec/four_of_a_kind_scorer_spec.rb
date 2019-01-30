require "./four_of_a_kind_scorer"

describe FourOfAKindScorer do

  context "no four of a kind" do
  
    it "scores zero" do
      roll = [1,2,3,4,5]
      
      score = subject.score(roll)

      expect(score).to eq(0)
    end
  
  end

  context "four of a kind" do

    it "scores sum of four of a kind" do
      roll = [1,1,1,1,5]
      
      score = subject.score(roll)

      expect(score).to eq(4)
    end

  end

end