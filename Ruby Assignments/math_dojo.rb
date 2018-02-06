class MathDojo
  def initialize
    @result = 0
  end

  def add *number
    for num in number
      if num.class == Array
        for n in num
          @result += n
        end
      else
        @result += num
      end
    end
    # or you could do this:
    self
  end

  # def add *number
  #   @result = number.flatten!.reduce(:+)
  #   self
  # end
  #
  # def subtract *number
  #   @result = number.flatten!.reduce(:-)
  #   self
  # end

  def subtract *number
    for num in number
      if num.class == Array
        for n in num
          @result -= n
        end
      else
        @result -= num
      end
    end
    self
  end

  def result
    puts @result
  end
end

MathDojo.new.add(2).add(2, 5).subtract(3, 2).result
MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result
