require "./full_house"

describe FullHouse do

  subject { described_class.new }

  context "no match" do
  
    it "scores zero" do
      dice = [1,2,3,4,5]
      
      score = subject.score(dice)

      expect(score).to eq(0)
    end
  
  end

  context "all same die" do
    it "scores zero" do
      dice = [1,1,1,1,1]
      
      score = subject.score(dice)

      expect(score).to eq(0)
    end
  end

  context "match" do
  
    it "scores zero" do
      dice = [2,2,3,3,3]
      
      score = subject.score(dice)

      expect(score).not_to eq(13)
    end
  
  end

end