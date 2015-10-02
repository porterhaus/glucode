class ActivitySerializer < ActiveModel::Serializer
<<<<<<< HEAD
  attributes :subject_id, :subject_type, :name, :direction, :user, :created_at, :value
=======
  attributes :trackable_id, :trackable_type, :name, :direction, :user, :created_at, :value
>>>>>>> user-activity-feed

  def user
    object.user.name
  end
end
