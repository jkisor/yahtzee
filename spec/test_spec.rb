def score(roll, category)
  0
end

describe "scoring a role in the ones category" do
  it "" do
    roll = [2,3,4,5,6]
    category = :ones
    
   
    expect( score(roll, category) ).to eq(0)
  end
end
