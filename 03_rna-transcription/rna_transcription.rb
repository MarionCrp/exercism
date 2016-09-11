class Complement
  VERSION = 3
  DNA_TO_RNA = {"G" => "C", "C" => "G", "T" => "A", "A" => "U"}

  def self.of_dna(dna)
    rna = dna.each_char.map do |n| 
      raise ArgumentError unless DNA_TO_RNA.has_key?(n)
      DNA_TO_RNA[n] 
    end.join
  end
end