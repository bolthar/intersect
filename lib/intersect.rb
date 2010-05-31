
require 'rubygems'
require 'freightrain'

include Freightrain

Freightrain.toolkit = :gtk
Freightrain.app_path = File.dirname(__FILE__)
Freightrain.auto_require!
Freightrain.configure_container!

shapes = Freightrain[:reader_service].read_shapes(ARGV[0])

shapes.each do |shape|
  shapes.each do |other_shape|
    if shape != other_shape
      p "#{shape.description}, #{other_shape.description}, intesects: #{Freightrain[:intersector_service].intersect?(shape, other_shape)}"
    end
  end
end
