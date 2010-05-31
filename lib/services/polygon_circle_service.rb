
class PolygonCircleService < FreightService

  service :line_circle_helper
  
  def intersect?(*shapes)
    polygon = shapes.select { |sh| sh.kind_of? Polygon }.first
    circle = shapes.select { |sh| sh.kind_of? Circle }.first
    polygon.segments.each do |segment|
      points = @line_circle_helper.intersect?(segment, circle)
      if points
        return true if segment.has_point?(points[0]) ||
                       segment.has_point?(points[1])
      end
    end
    return false
  end

end