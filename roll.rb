class Roll
  attr_reader :numbers

  def initialize(numbers)
    @numbers = numbers
  end

  def pairs
    n_of_a_kind(2)
  end

  def trios
    n_of_a_kind(3)
  end

  private

  def grouped_numbers
    @numbers.group_by { |number| number }
  end

  def n_of_a_kind(n)
    grouped_numbers.select { |k,v| v.count >= n }.keys
  end

end
