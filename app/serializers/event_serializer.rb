class EventSerializer
  include JSONAPI::Serializer

  attributes :starts_at, :location
end
