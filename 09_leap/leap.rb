class Year
  VERSION = 1
  def self.leap? (year)
    if year % 4 == 0
      if year % 100 == 0
        if year % 400 == 0
          "Yes, #{ year } is a leap year"
          return true 
        else
          "No, #{ year } is not a leap year"
          return false
        end
      end
      "Yes, #{ year } is a leap year"
      return true
    else
      "No, #{ year } is not a leap year"
      return false
    end
  end
end