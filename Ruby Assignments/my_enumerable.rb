module MyEnumerable
  def my_each
    for x in self
      yield(x)
    end
    # return self
    # Even without the above statement self is still being returned. Why is that?
  end
end

class Array
  include MyEnumerable
end

[1,2,3,4].my_each { |i| puts i }
[1,2,3,4].my_each { |i| puts i * 10 }
