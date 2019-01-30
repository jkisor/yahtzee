require "./yahtzee"

describe Yahtzee do
  
  context "when not all die are the same" do

    it "scores zero" do
      dice = [1,2,3,4,5]
      score = subject.score(dice)

      expect(score).to eq(0)
    end

  end

end