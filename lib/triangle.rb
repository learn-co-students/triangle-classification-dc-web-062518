class Triangle
  # write code here

  def initialize (length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
    if length1 == length2 && length2 == length3
      @type = :equilateral
    elsif length1 == length2 || length2 == length3 || length3 == length1
      @type = :isosceles
    else
      @type = :scalene
    end
  end

  def kind
    if (@length1 + @length2) <= @length3 || (@length2 + @length3) <= @length1 || (@length1 + @length3) <= @length2
      raise TriangleError
    elsif @length1 == 0 || @length2 == 0 || @length3 == 0
      raise TriangleError
    else
      @type
    end
  end

  class TriangleError < StandardError

  end

end
