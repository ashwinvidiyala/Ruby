require_relative 'human'

class Wizard < Human
  def initialize
    super
    @health = 50
    @intelligence = 25
  end

  def heal
    @health += 10
    self
  end

  def fireball(object)
    attack(object, 20)
    self
  end
end

wizard1 = Wizard.new
wizard2 = Wizard.new
wizard1.fireball(wizard2).fireball(wizard2).heal
p wizard2.health
p wizard1.health
