
class Circle

  attr_reader :center
  attr_reader :radius
  
  def initialize(center, radius)
    @center = Point.new(center)
    @radius = radius.to_f
  end

end