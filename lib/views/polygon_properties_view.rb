
class PolygonPropertiesView < FreightView
  
  signal :add, :forwards => "add.clicked"
  signal :delete

  def points_on_delete(point)
    fire :delete, point
  end

  def commit
    points.elements.each do |el|
      el.commit
    end
  end
  
end