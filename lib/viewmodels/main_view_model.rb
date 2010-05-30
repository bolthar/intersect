
class MainViewModel < FreightViewModel

  region :create
  region :shapes

  def on_close
    Toolkit.quit
  end
  
end