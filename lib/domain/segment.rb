
module Segment

  attr_reader :point_one
  attr_reader :point_two
  
  def has_point?(point)
    return false unless point
    min_x = [@point_one.x, @point_two.x].min
    min_y = [@point_one.y, @point_two.y].min
    max_x = [@point_one.x, @point_two.x].max
    max_y = [@point_one.y, @point_two.y].max
    return point.x >= min_x && point.x <= max_x &&
           point.y >= min_y && point.y <= max_y
  end

end