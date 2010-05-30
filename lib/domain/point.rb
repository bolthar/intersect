
class Point

  #no need for this to be writable, just i'm a lazy bastard and i need this for presentation
  attr_accessor :x
  attr_accessor :y

  def initialize(array)
    @x = array[0].to_f
    @y = array[1].to_f
  end

  def distance_to(point)
    return Math.sqrt((point.x - @x)**2 + (point.y - @y)**2)
  end
end