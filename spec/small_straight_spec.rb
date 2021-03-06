require "./small_straight"

describe SmallStraight do

  context "no match" do

    it "scores zero" do
      dice = [3,5,6,1,2]

      score = subject.score(dice)

      expect(score).to eq(0)
    end

  end

  context "match" do

    it "scores sum of die" do
      dice = [1,2,3,4,5]

      score = subject.score(dice)

      expect(score).to eq(15)
    end

  end
end