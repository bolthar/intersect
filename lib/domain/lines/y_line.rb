
#line with constant Y
class YLine < StandardLine

  def a
    return 1.to_f
  end

  def b
    return 0.to_f
  end

  def c
    return -@point_one.y
  end

  def intersection(line)
    return nil if line.kind_of? YLine
    x = -c
    y = (line.a*c-line.c)/line.b
    return Point.new([x, y])
  end

end
