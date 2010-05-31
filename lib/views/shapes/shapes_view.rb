
class ShapesView < FreightView

  signal :load

  def load_on_clicked
    filename = open_file_dialog
    fire :load, filename if filename
  end
  
end