class Human
  attr_accessor :health, :stealth, :strength, :intelligence
  def initialize
    @strength = 3
    @intelligence = 3
    @stealth = 3
    @health = 100
  end

  def attack(object, damage=10)
    if object.class.ancestors.include? Human
      object.health -= damage
      true
    else
      false
    end
    # self
  end
end

human1 = Human.new
human2 = Human.new
# p human2.health
# human1.attack(human2).attack(human2)
# p human2.health
