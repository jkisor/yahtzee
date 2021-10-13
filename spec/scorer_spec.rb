require "./scorer"

describe Scorer do
  subject { described_class }

  [:ones, :twos, :threes, :fours, :fives, :sixes].each do |category|
    context "for #{category} category" do
      it "creates a scorer" do
        scorer = subject.for_category(category)
        expect(scorer).to be_a Number
      end
    end
  end

  context "for pair category" do
    it "creates a scorer" do
      category = :pair
      scorer = subject.for_category(category)
      expect(scorer).to be_a NOfAKind
    end
  end


  context "for two pair category" do
    it "creates a scorer" do
      category = :two_pair
      scorer = subject.for_category(category)
      expect(scorer).to be_a TwoPair
    end
  end


  context "for three of a kind category" do
    it "creates a scorer" do
      category = :three_of_a_kind
      scorer = subject.for_category(category)
      expect(scorer).to be_a NOfAKind
    end
  end

  context "for four of a kind category" do
    it "creates a scorer" do
      category = :four_of_a_kind
      scorer = subject.for_category(category)
      expect(scorer).to be_a NOfAKind
    end
  end

  context "for small straight category" do
    it "creates a scorer" do
      category = :small_straight
      scorer = subject.for_category(category)
      expect(scorer).to be_a SmallStraight
    end
  end

  context "for large straight category" do
    it "creates a scorer" do
      category = :large_straight
      scorer = subject.for_category(category)
      expect(scorer).to be_a LargeStraight
    end
  end

  context "for yahtzee category" do
    it "creates a scorer" do
      category = :yahtzee
      scorer = subject.for_category(category)
      expect(scorer).to be_a Yahtzee
    end
  end

  context "for chance category" do
    it "creates a scorer" do
      category = :chance
      scorer = subject.for_category(category)
      expect(scorer).to be_a Chance
    end
  end

  context "for full house category" do
    it "creates a scorer" do
      category = :full_house
      scorer = subject.for_category(category)
      expect(scorer).to be_a FullHouse
    end
  end

end