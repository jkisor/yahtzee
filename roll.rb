class Roll
  attr_reader :numbers

  def initialize(numbers)
    @numbers = numbers
  end

  def pairs
    grouped = @numbers.group_by { |number| number }
    grouped.select { |k,v| v.count >= 2 }.keys
  end

end
