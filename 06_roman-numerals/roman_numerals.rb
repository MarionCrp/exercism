class Integer
  VERSION = 1
  def to_roman
    number = self
    roman = ''

    while number >= 1000 do
      roman += 'M'
      number -= 1000
    end

    if number >= 900
      roman += 'CM'
      number -= 900
    end

    if number >= 500
      roman += 'D'
      number -= 500
    end

    if number >= 400
      roman += "CD"
      number -= 400
    end

    while number >= 100 do
      roman += 'C'
      number -= 100
    end

    if number >= 90
      roman += 'XC'
      number-= 90
    end

    if number >= 50
      roman += 'L'
      number -= 50
    end

    if number >= 40
      roman += 'XL'
      number -= 40
    end

    while number >= 10 do
      roman += 'X'
      number -= 10
    end

    if number == 9
      roman += 'IX'
      number -= 9
    end

    if number >= 5
      roman += 'V'
      number -= 5
    end

    if number == 4
      roman += 'IV'
      number -= 4
    end

    while number >= 1
      roman += 'I'
      number -= 1
    end

    roman
    
  end
end