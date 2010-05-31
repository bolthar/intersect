
class MainViewModel < FreightViewModel

  region :create
  region :shapes

  def on_close
    Toolkit.quit
  end

  def create_on_created(shape)
    shapes.add_shape(shape)
  end
end