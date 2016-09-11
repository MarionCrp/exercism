class Squares
  VERSION = 2

  def initialize(n)
    @n = n
  end

  def square_of_sum
    (0..@n).reduce(:+)**2
  end

  def sum_of_squares
    (0..@n).map { |number| number**2 }.reduce(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end

end