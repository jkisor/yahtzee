require "./chance"

describe Chance do
  
  it "scores sum of dice" do
    dice = [2,3,3,2,2]
    score = subject.score(dice)

    expect(score).to eq(12)
  end

end