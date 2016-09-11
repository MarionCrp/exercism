class Robot

  # Class variable of type Array which contains all already affected names
  @@names = [ ]

  attr_reader :name

  def initialize
    @name = self.random_name
  end

  def random_name
    name = ''
    while @@names.index(name) or name == ''
      name = ''
      2.times.map { name += [*'A'..'Z'].sample }
      3.times { name += [*0..9].sample.to_s }
    end
    @@names << @name
    name
  end

  #FIXME : this following code doesn't work. I don't know why. It fails the first test which is : 
  #     1) Failure:
  #     RobotTest#test_has_name [robot_name_test.rb:17]:
  #     Expected /^[A-Z]{2}\d{3}$/ to match nil.

  # def random_name
  #   loop do
  #       name = ''
  #       2.times.map { name += [*'A'..'Z'].sample }
  #       3.times { name += [*0..9].sample.to_s }
  #       break if !@@names.index(name)
  #   end
  # end

  def reset
    @@names.delete(@name)
    @name = random_name
  end
end
