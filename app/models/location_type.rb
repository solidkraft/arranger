class LocationType < ActiveModel::Type::Value
  def cast(value)
    case value
    when NilClass, "{}" then Blank.new
    when String then Where(ActiveSupport::JSON.decode(value).symbolize_keys!)
    else Where(value)
    end
  end

  def serialize(value)
    ActiveSupport::JSON.encode(value)
  end
end
