
#line with constant X
class XLine < StandardLine

  def a
    return 0.to_f
  end

  def b
    return 1.to_f
  end

  def c
    return -@point_one.x
  end

  def intersection(line)
    return nil if line.kind_of? XLine
    x = (line.b*c-line.c)/line.a
    y = -c
    return Point.new([x, y])
  end
  
end