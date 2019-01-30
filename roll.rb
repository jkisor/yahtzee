class Roll
  attr_reader :numbers

  def initialize(numbers)
    @numbers = numbers
  end

  def pairs
    grouped_numbers.select { |k,v| v.count >= 2 }.keys
  end

  def trios
    grouped_numbers.select { |k,v| v.count >= 3 }.keys
  end

  private

  def grouped_numbers
    @numbers.group_by { |number| number }
  end

end
