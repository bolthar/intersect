
class Point

  attr_reader :x
  attr_reader :y

  def initialize(array)
    @x = array[0].to_f
    @y = array[1].to_f
  end

  def distance_to(point)
    return Math.sqrt((point.x - @x)**2 + (point.y - @y)**2)
  end
end