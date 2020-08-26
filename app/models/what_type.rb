class WhatType < ActiveModel::Type::Value
  def cast(value)
    case value
    when NilClass, "{}" then Blank.new
    when String then What(ActiveSupport::JSON.decode(value).symbolize_keys!)
    else What(value)
    end
  end

  def serialize(value)
    ActiveSupport::JSON.encode(value)
  end
end
