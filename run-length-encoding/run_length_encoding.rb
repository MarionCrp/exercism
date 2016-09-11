class RunLengthEncoding
  def self.encode(input)
    encode_string = ""
    input.split('').group_by(&:itself).map { |key, value| encode_string << "#{value.size}#{key}" }
    return encode_string
  end

  def self.decode(input)
    decode_string = ""
    input.split('')
  end

end
