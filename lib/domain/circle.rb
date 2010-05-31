
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
  
end