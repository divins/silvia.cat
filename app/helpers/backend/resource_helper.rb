module Backend::ResourceHelper
  def attributes
    resource_class.attribute_names - %w(id created_at updated_at thumbnail_coordinates)
  end

  def select_current_coordinates(coordinates)
    x = coordinates['x']
    y = coordinates['y']
    x2 = coordinates['x'].to_i + coordinates['h'].to_i
    y2 = coordinates['x'].to_i + coordinates['w'].to_i
    [x, y, x2, y2].join(', ')
  end
end
