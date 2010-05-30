
class LineLineService < FreightService

  def intersect?(line_one, line_two)
    return line_one.intersection(line_two)
  end

end
