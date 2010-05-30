
class PolygonPropertiesViewModel < FreightViewModel

  attr_reader :points
  
  def initialize
    @points = []
    @view.update
  end

  def on_add
    @points << Point.new([0,0])
    @view.update
    @view.commit
  end
  
  def on_delete(point)
    p point
    @points.delete(point)
    @view.update
  end

  def get_shape
    @view.commit
    return Polygon.new(*@points.map { |point| [point.x, point.y]})
  end
  
end