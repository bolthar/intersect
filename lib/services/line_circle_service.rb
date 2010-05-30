
class LineCircleService < FreightService

  def intersect?(*shapes)
    line = shapes.select { |sh| sh.kind_of? StandardLine }.first
    circle = shapes.select { |sh| sh.kind_of? Circle }.first
    return line.distance_to(circle.center) <= circle.radius
  end

end