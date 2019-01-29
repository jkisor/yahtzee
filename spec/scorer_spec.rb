require "./scorer"

describe Scorer do
  subject { described_class }
  
  [:ones, :twos, :threes, :fours, :fives, :sixes].each do |category|
    context "for #{category} category" do
      it "creates a scorer" do
        scorer = subject.for_category(category)
        expect(scorer).to be_a NumberScorer
      end
    end
  end

  context "for pair category" do
    it "creates a scorer" do
      category = :pair
      scorer = subject.for_category(category)
      expect(scorer).to be_a PairScorer
    end
  end
  
end