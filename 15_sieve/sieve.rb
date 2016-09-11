class Sieve

  def initialize(number)
    @number = number
  end

  def primes
    (2..@number).reject { |n| not_primes?(n) }
  end

  def not_primes?(n)
    (2...n).each { |m| return true if n % m == 0 }
    return false
  end
end
