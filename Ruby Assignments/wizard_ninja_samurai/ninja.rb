require_relative 'human'

class Ninja < Human
  def initialize
    super
    @stealth = 175
  end

  def steal(object)
    attack(object, 10)
    @health += 10
    self
  end

  def get_away
    @health -= 15
    self
  end
end

ninja1 = Ninja.new
ninja2 = Ninja.new
p ninja1.health
p ninja2.health
ninja1.steal(ninja2).get_away.get_away
p ninja1.health
p ninja2.health
