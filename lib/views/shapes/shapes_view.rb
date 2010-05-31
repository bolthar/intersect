
class ShapesView < FreightView

  signal :load
  signal :display, :forwards => "display.clicked"

  def load_on_clicked
    filename = open_file_dialog
    fire :load, filename if filename
  end
  
end