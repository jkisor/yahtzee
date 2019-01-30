require "./three_of_a_kind_scorer"

describe ThreeOfAKindScorer do

  context "no three of a kind" do
  
    it "scores zero" do
      roll = [1,2,3,4,5]
      
      score = subject.score(roll)

      expect(score).to eq(0)
    end
  
  end

  context "three of a kind" do

    it "scores sum of three of a kind" do
      roll = [1,1,1,4,5]
      
      score = subject.score(roll)

      expect(score).not_to eq(3)
    end

  end

end