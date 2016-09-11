class Hamming
  VERSION = 1
  def self.compute(letter_1, letter_2)
    let_1 = letter_1.split('')
    let_2 = letter_2.split('')
    letter_length = letter_1.size
    i = 0
    diff_letter = 0

    if  letter_1.size == letter_2.size
      while  i < letter_length do
        diff_letter += 1 unless let_2[i] == let_1[i]
        i += 1
      end
    else  raise ArgumentError.new("Error")
    end
    diff_letter
  end
end
