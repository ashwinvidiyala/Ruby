class AppleTree
  attr_accessor :age
  attr_reader :height, :apple_count

  def initialize height = 0
    @height = height
    @apple_count = 0
    @age = 0
  end

  def year_gone_by
    @age += 1
    @height = @height + (@height * 0.10)
    @apple_count += 2 if @age > 3 && @age <= 10
    self
  end

  def pick_apples
    @apple_count = 0
    self
  end
end
