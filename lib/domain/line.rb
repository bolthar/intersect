
class Line

  def self.new(point, point_or_slope)
    point_one = Point.new(point)
    if point_or_slope.kind_of? Array
      point_two =  Point.new(point_or_slope)
    else
      point_two = Point.new([point_one.x + 1, point_one.y + point_or_slope])
    end
    return XLine.new(point_one, point_two) if point_one.x == point_two.x 
    return YLine.new(point_one, point_two) if point_one.y == point_two.y
    return StandardLine.new(point_one, point_two)    
  end

end