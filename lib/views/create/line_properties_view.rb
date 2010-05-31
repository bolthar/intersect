
class LinePropertiesView < FreightView

  signal :type_changed

  def points_on_toggled
    fire :type_changed, :points if points.active?
  end

  def point_slope_on_toggled
    fire :type_changed, :point_slope if point_slope.active?
  end
  
end