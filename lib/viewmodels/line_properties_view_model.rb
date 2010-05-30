
class LinePropertiesViewModel < FreightViewModel

  attr_accessor :point_one_x, :point_one_y
  attr_accessor :point_two_x, :point_two_y
  attr_accessor :slope

  def initialize
    @type_selected = :points
    @view.update
  end

  def on_type_changed(type)
    @type_selected = type
    @view.update
  end

  def second_point_visible?
    return @type_selected == :points
  end

  def slope_visible?
    return @type_selected == :point_slope
  end

  def get_shape
    @view.commit
    if @type_selected == :points
      return Line.new([@point_one_x, @point_one_y], [@point_two_x, @point_two_y])
    end
    return Line.new([@point_one_x, @point_one_y], @slope)
  end
  
end