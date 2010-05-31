
class LineCircleService < FreightService

  service :line_circle_helper
  
  def intersect?(*shapes)
    line = shapes.select { |sh| sh.kind_of? StandardLine }.first
    circle = shapes.select { |sh| sh.kind_of? Circle }.first
    return @line_circle_helper.intersect?(line, circle)    
  end

end