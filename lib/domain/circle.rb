
class Circle < Shape

  attr_reader :center
  attr_reader :radius
  
  def initialize(center, radius)
    @center = Point.new(center)
    @radius = radius.to_f
  end

  def description
    return "Circle - center = [#{@center.x}, #{@center.y}], radius = #{@radius}"
  end

  def a
    return -2 * @center.x
  end

  def b
    return -2 * @center.y
  end

  def c
    return (-@radius**2) + @center.x**2 + @center.y**2
  end
  
end