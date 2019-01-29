def score_roll(roll, category)
  return 1 if roll.include?(1)

  0
end

describe "scoring a role in the ones category" do

  context "when no ones where rolled" do
  
    it "scores 0" do
      roll = [2,3,4,5,6]
      category = :ones
  
      score = score_roll(roll, category) 
  
      expect(score).to eq(0)
    end
  
  end

  context "when a single one is rolled" do
    it "scores sum of ones" do
      roll = [1,2,3,4,5]
      category = :ones

      score = score_roll(roll, category)

      expect(score).to eq(1)
    end
  end

  context "when a many ones are rolled" do
    it "scores sum of ones" do
      roll = [1,1,1,1,1]
      category = :ones

      score = score_roll(roll, category)

      expect(score).to eq(1)
    end
  end

end
