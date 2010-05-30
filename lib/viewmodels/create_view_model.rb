
class CreateViewModel < FreightViewModel

  region :properties, :viewmodel => :line_properties

  def on_type_changed(type)
    change_region :properties, "#{type}_properties".to_sym
  end

  def on_create
    p "create"
  end
  
end