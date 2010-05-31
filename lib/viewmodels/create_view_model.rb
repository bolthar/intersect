
class CreateViewModel < FreightViewModel

  region :properties, :viewmodel => :line_properties

  signal :created

  def on_type_changed(type)
    change_region :properties, "#{type}_properties".to_sym
  end

  def on_create
    fire :created, properties.get_shape
  end
  
end
