class Bob

  def bob
  end

  def hey(remark)
    if remark == remark.upcase && (remark =~ /[A-Z]/) 
      'Whoa, chill out!'
    elsif remark.end_with? "?"
      'Sure.'
    elsif remark.strip.empty?
      'Fine. Be that way!'
    else
      'Whatever.'
    end
  end

end
