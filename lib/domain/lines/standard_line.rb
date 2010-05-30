
class StandardLine

  def initialize(point_one, point_two)
    @point_one = point_one
    @point_two = point_two
  end
  
  def a
    return 0 if @point_one.y == @point_two.y
    return 1 / (@point_two.y - @point_one.y)
  end

  def b
    return 0 if @point_one.x == @point_two.x
    return (-1 / (@point_two.x - @point_one.x))
  end

  def c
    x_term = @point_one.x / (@point_two.x - @point_one.x)
    y_term = @point_one.y / (@point_two.y - @point_one.y)
    return -1 if x_term.nan? || x_term.infinite?
    return -1 if y_term.nan? || y_term.infinite?
    return x_term - y_term
  end

  def m
    return a / b
  end

  def distance_to(point)
    return (((a*point.x) + (b*point.y) + c).abs/Math.sqrt(a**2 + b**2))
  end

  def intersection(line)    
    return line.intersection(self) unless line.kind_of? StandardLine
    return nil if self.m == line.m
    x = -((line.a*c)+(a*line.c))/((a*line.b)-(line.a*b))
    y = ((-b*x)-c)/a
    return Point.new([x, y])
  end

end