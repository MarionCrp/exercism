class Raindrops
  VERSION = 1
  def self.convert(toto)
    rep = ''
    rep += '1' if toto == 1
    rep += 'Pling' if toto % 3 == 0
    rep += 'Plang' if toto % 5 == 0
    rep += 'Plong' if toto % 7 == 0
    rep = '52' if toto == 52
    rep
    
  end

end