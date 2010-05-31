
class ShapesViewModel < FreightViewModel

  service :intersector
  service :reader

  attr_reader :shapes
  
  def initialize
    @shapes = []
  end

  def add_shape(shape)
    @shapes << shape
    @shapes.each do |sh|
      @shapes.each do |other|
        if sh != other && @intersector.intersect?(sh, other)
          sh.intersections << other unless sh.intersections.include?(other)
        end
      end
    end
    @view.update
  end

  def on_load(filename)
    @reader.read_shapes(filename).each do |shape|
      add_shape(shape)
    end
  end
  
end