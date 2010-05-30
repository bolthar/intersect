
class Polygon

  attr_reader :segments
  
  def initialize(*args)
    @segments = []
    points = args
    points = [args[0], args[0]] if args.length == 1
    (0...points.length - 1).each do |point|
      segment = Line.new(points[point], points[point+1])
      segment.instance_eval do
        (class << self;self;end).instance_eval("include Segment")
      end
      @segments << segment
    end
  end

end
