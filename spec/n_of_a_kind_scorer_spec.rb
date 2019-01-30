require "./n_of_a_kind_scorer"

describe NOfAKindScorer do

  subject { described_class.new(4) }

  context "no match" do
  
    it "scores zero" do
      roll = [1,2,3,4,5]
      
      score = subject.score(roll)

      expect(score).to eq(0)
    end
  
  end

  context "match" do

    it "scores sum of n of a kind" do
      roll = [1,1,1,1,5]
      
      score = subject.score(roll)

      expect(score).to eq(4)
    end

  end

end