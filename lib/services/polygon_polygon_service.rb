
class PolygonPolygonService < FreightService

  def intersect?(polygon_one, polygon_two)
    polygon_one.segments.each do |segment_one|
      polygon_two.segments.each do |segment_two|
        intersection = segment_one.intersection(segment_two)
        return true if segment_one.has_point?(intersection) &&
                       segment_two.has_point?(intersection)
      end
    end
    return false
  end
end