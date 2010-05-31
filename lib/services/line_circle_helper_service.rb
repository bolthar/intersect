
class LineCircleHelperService < FreightService

  def intersect?(line, circle)
    @line = line
    @circle = circle
    return false if delta < 0 || eq_a == 0
    x1 = (-eq_b + Math.sqrt(delta))/(2*eq_a)
    x2 = (-eq_b - Math.sqrt(delta))/(2*eq_a)
    y1 = ((-@line.b*x1)-@line.c)/@line.a
    y2 = ((-@line.b*x2)-@line.c)/@line.a
    return [Point.new([x1, y1]), Point.new([x2, y2])]
  end

  private
  def eq_a
    return (@line.a**2) + (@line.b**2)
  end

  def eq_b
    term1 = 2*@line.b*@line.c
    term2 = @circle.a*(@line.a**2)
    term3 = @line.a*@circle.b*@line.b
    return term1 + term2 - term3
  end

  def eq_c
    term1 = @line.c**2
    term2 = (@line.a**2)*@circle.c
    term3 = @line.a*@circle.b*@line.c
    return term1 + term2 - term3
  end

  def delta
    b_squared = eq_b**2
    return b_squared - (4 * eq_a * eq_c)
  end

end