class BgtestSerializer < ActiveModel::Serializer
  attributes :id, :value, :category, :time_of_day, :comments, :user_id, :created_at, :updated_at

end

