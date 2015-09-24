class Meal < ActiveRecord::Base
  belongs_to :user
  has_many :bgtests, through: :user

  after_create :create_activity

  private

  def create_activity
    Activity.create(
      subject: self,
      name: 'meal_created',
      direction: 'by',
      user: user
    )
  end
end
