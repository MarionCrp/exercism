class FoodChain
  VERSION = 2
  def self.song
    songs = ""
    animals = ['fly', 'spider', 'bird', 'cat', 'dog', 'goat', 'cow', 'horse'];
    i = 0
    while animals[i] != 'horse' do
      songs += "I know an old lady who swallowed a #{animals[i]}.\n"
      if animals[i] != 'fly'

        case animals[i]
        when 'spider' 
          songs += "It wriggled and jiggled and tickled inside her.\n"
        when 'bird' 
          songs += "How absurd to swallow a bird!\n"
        when 'cat' 
          songs += "Imagine that, to swallow a cat!\n"
        when 'dog' 
         songs += "What a hog, to swallow a dog!\n"
        when 'goat' 
          songs += "Just opened her throat and swallowed a goat!\n" 
        when 'cow' 
          songs += "I don't know how she swallowed a cow!\n" 
        end

        j = i
        while j > 0 do
          if animals[j-1] == 'spider' then plus = " that wriggled and jiggled and tickled inside her." else plus = "." end
          songs += "She swallowed the #{animals[j]} to catch the #{animals[j-1]}#{plus}\n"
          j -= 1 
        end             
      end
      i += 1
      songs += "I don't know why she swallowed the fly. Perhaps she'll die.\n\n"
    end
    songs += "I know an old lady who swallowed a #{animals[i]}.\n"
    songs += "She's dead, of course!"
    return songs
  end
end