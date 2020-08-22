class ValueValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    if value.exceptional?
      record.errors[attribute] << (options[:message] || "is invalid: #{value.reason}")
    end
  end
end
