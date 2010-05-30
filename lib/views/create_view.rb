
class CreateView < FreightView

  signal :type_changed
  signal :create, :forwards => "create.clicked"

  def line_on_toggled
    fire :type_changed, :line if line.active?
  end

  def circle_on_toggled
    fire :type_changed, :circle if circle.active?
  end

  def polygon_on_toggled
    fire :type_changed, :polygon if polygon.active?
  end

end