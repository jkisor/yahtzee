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
      expect(scorer).to be_a NOfAKindScorer
    end
  end
  

  context "for two pair category" do
    it "creates a scorer" do
      category = :two_pair
      scorer = subject.for_category(category)
      expect(scorer).to be_a TwoPairScorer
    end
  end


  context "for three of a kind category" do
    it "creates a scorer" do
      category = :three_of_a_kind
      scorer = subject.for_category(category)
      expect(scorer).to be_a NOfAKindScorer
    end
  end

  context "for four of a kind category" do
    it "creates a scorer" do
      category = :four_of_a_kind
      scorer = subject.for_category(category)
      expect(scorer).to be_a NOfAKindScorer
    end
  end

end