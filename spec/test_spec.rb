def score(roll, category)
end

describe "scoring a role in the ones category" do
  it "" do
    roll = [2,3,4,5,6]
    category = :ones
    
    score(roll, category)
    expect(true).to eq(true)
  end
end
