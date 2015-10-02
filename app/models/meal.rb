class Meal < ActiveRecord::Base
  belongs_to :user
  has_many :bgtests, through: :user

  after_create :create_activity

  private

  def create_activity
    Activity.create(
      trackable: self,
      name: 'added',
      direction: 'by',
      user: user,
      value: self.carbohydrates
    )
  end
end
