class Phrase
  VERSION = 1
  def initialize(phrase)
    @phrase = phrase
    @counts = {}
    phrase.gsub(/[^a-zA-Z0-9\']/, ' ').downcase.split.each do |n|
      if /^\'.+\'$/.match(n)
        n.delete! "\'"
      end

      if !@counts.has_key?(n)
        @counts[n] = 1
      else
        @counts[n] += 1
      end
    end
  end
  
  def word_count
    @counts
  end

end