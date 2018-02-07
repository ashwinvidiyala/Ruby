require_relative 'human'

class Samurai < Human
  @@total_samurais = 0
  def initialize
    super
    @health = 200
    @@total_samurais += 1
  end

  def death_blow(object)
    attack(object, object.health)
    self
  end

  def meditate
    @health = 200
    self
  end

  def how_many
    puts "There are #{@@total_samurais} samurais"
    self
  end
end

samurai1 = Samurai.new
samurai2 = Samurai.new
p samurai1.health
samurai1.death_blow(samurai2)
p samurai2.health
samurai2.meditate
p samurai2.health
samurai1.how_many
samurai2.how_many
