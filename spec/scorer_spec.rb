require "./scorer"

describe Scorer do
  subject { described_class }

  it do
    scorer = subject.for_category(:ones)
    expect(scorer).to be_a NumberScorer
  end

end