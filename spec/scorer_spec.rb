require "./scorer"

describe Scorer do
  subject { described_class }

  context "for ones category" do
    it "creates a scorer" do
      scorer = subject.for_category(:ones)
      expect(scorer).to be_a NumberScorer
    end
  end

  context "for twos category" do
    it "creates a scorer" do
      scorer = subject.for_category(:twos)
      expect(scorer).to be_a NumberScorer
    end
  end 
  
end