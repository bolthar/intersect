
class CirclePropertiesViewModel < FreightViewModel

  attr_accessor :center_x, :center_y
  attr_accessor :radius

  def get_shape
    @view.commit
    return Circle.new([@center_x, @center_y], @radius)
  end
  
end