require "./number"

describe Number do

  context "when no occurances of number are rolled" do
  
    it "scores zero" do
      dice = [2,3,4,5,6]
      scorer = Number.new(1)
  
      score = scorer.score(dice)
  
      expect(score).to eq(0)
    end
  
  end

  context "when a single occurance of number is rolled" do

    it "scores sum of occurances" do
      dice = [1,2,3,4,5]
      scorer = Number.new(1)

      score = scorer.score(dice)

      expect(score).to eq(1)
    end

  end

  context "when many occurances of number are rolled" do

    it "scores sum of occurances" do
      dice = [1,1,1,1,1]
      scorer = Number.new(1)

      score = scorer.score(dice)

      expect(score).to eq(5)
    end

  end

end