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

end