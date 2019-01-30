require "./n_of_a_kind"

describe NOfAKind do

  subject { described_class.new(4) }

  context "no match" do
  
    it "scores zero" do
      dice = [1,2,3,4,5]
      
      score = subject.score(dice)

      expect(score).to eq(0)
    end
  
  end

  context "match" do

    it "scores sum of n of a kind" do
      dice = [1,1,1,1,5]
      
      score = subject.score(dice)

      expect(score).to eq(4)
    end

  end

end