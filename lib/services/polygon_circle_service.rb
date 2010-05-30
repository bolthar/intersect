
class PolygonCircleService < FreightService

  def intersect?(*shapes)
    polygon = shapes.select { |sh| sh.kind_of? Polygon }.first
    circle = shapes.select { |sh| sh.kind_of? Circle }.first
    polygon.segments.each do |segment|
      return true if circle.center.distance_to(segment.point_one) == circle.radius
      return true if circle.center.distance_to(segment.point_two) == circle.radius
      first_inside  = circle.center.distance_to(segment.point_one) <= circle.radius
      second_inside = circle.center.distance_to(segment.point_two) <= circle.radius
      return true if first_inside ^ second_inside
    end
    return false
  end

end