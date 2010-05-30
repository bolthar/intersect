
class LinePolygonService < FreightService

  def intersect?(*shapes)
    line = shapes.select { |sh| sh.kind_of? StandardLine }.first
    polygon = shapes.select { |sh| sh.kind_of? Polygon }.first
    polygon.segments.each do |segment|
      intersection = line.intersection(segment)
      return true if segment.has_point?(intersection)
    end
    return false
  end
end