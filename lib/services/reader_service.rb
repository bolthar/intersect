
class ReaderService < FreightService

  def read_shapes(filename)
    return @shapes if @shapes
    @shapes = []
    File.open(filename, 'r').lines.each do |line|
      unless line.strip.empty?
        shape_class = get_shape_class(line.split(':')[0])
        params      = get_parameters(line.split(':')[1])
        @shapes << shape_class.new(*params)
      end
    end
    return @shapes
  end

  def get_shape_class(class_name)
    return Line if class_name =~ /line/i
    return Circle if class_name =~ /circle/i
    return Polygon if class_name =~ /polygon/i
  end

  def get_parameters(params)
    list = []
    params.strip.split('-').each do |param|
      if param =~ /,/
        list << [param.split(',')[0], param.split(',')[1]]
      else
        list << param
      end
    end
    return list
  end

end