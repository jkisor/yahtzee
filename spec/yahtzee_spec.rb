require "./yahtzee"

describe Yahtzee do

  context "when not all die are the same" do

    it "scores zero" do
      dice = [1,2,3,4,5]
      score = subject.score(dice)

      expect(score).to eq(0)
    end

  end

  context "when all die are the same" do

    it "scores sum of dice" do
      dice = [1,1,1,1,1]
      score = subject.score(dice)

      expect(score).to eq(5)
    end

  end

end