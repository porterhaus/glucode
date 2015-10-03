class ActivitySerializer < ActiveModel::Serializer
  #attributes :subject_id, :subject_type, :name, :direction, :user, :created_at, :value

  attributes :trackable_id, :trackable_type, :name, :direction, :user, :created_at, :value

  def user
    object.user.name
  end
end
