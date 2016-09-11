class Prime

  def self.nth(n)
    raise ArgumentError if n == 0
    if n == 1
      return 2
    end

    i = 3
    cpt = 1
    loop do
      cpt += 1 if i % 2 != 0 && is_nth?(i)
      i += 1
      break if cpt >= n
    end
    i - 1
  end

  def self.is_nth?(number)
    (3...number).each do |i|
      if number % i == 0  
        return false
      end
    end
    true
  end
end