class Hamming
  VERSION = 1
  def self.compute(x, y)
    raise ArgumentError unless x.size == y.size
    x.chars.zip( y.chars ).map { |n, m| n == m }.count(false)
  end

end
