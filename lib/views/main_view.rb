
class MainView < FreightView

  signal :close, :forwards => "main.destroy"

end