require "./three_of_a_kind_scorer"

describe ThreeOfAKindScorer do

  context "no three of a kind" do
  
    it "scores zero" do
      roll = [1,2,3,4,5]
      
      score = subject.score(roll)

      expect(score).to eq(0)
    end
  
  end


end