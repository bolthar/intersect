
class PointElementViewModel < FreightElementViewModel

  signal :delete

  def on_delete
    fire :delete, @value
  end

  def commit
    @view.commit
  end
  
end