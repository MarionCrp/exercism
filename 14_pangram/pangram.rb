class Pangram
  VERSION = 1

  def self.affiche
    puts @@alpha
  end

  def self.is_pangram?(string)
    for letter in "A".."Z"
      @@alpha[letter] = 'false'
    end
    string.chars.each do |letter| check(letter.capitalize) end
    return !@@alpha.has_value?('false')
  end
  
  def self.check(letter)
    if @@alpha.has_key?(letter)
      @@alpha[letter] = 'true'
    end
  end
end