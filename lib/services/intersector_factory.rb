
class IntersectorService < FreightService

  service :line_line
  service :line_circle
  service :line_polygon
  service :circle_circle
  service :polygon_circle
  service :polygon_polygon

  def intersects?(*shapes)
    lines    = shapes.select { |sh| sh.kind_of? StandardLine }.length
    circles  = shapes.select { |sh| sh.kind_of? Circle }.length
    polygons = shapes.select { |sh| sh.kind_of? Polygon }.length
    return @circle_circle.intersects?(*shapes) if circles == 2
    return @line_line.intersects?(*shapes) if lines == 2
    return @polygon_polygon.intersects?(*shapes) if polygons == 2
    return @line_circle.intersects?(*shapes) if circles == 1 && lines == 1
    return @line_polygon.intersects?(*shapes) if polygons == 1 && lines == 1
    return @polygon_circle.intersects?(*shapes) if circles == 1 && polygons == 1
  end
end