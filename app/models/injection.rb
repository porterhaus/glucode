class Injection < ActiveRecord::Base
  belongs_to :user
  has_many :bgtests, through: :user

  after_create :create_activity

  private

  def create_activity
    Activity.create(
<<<<<<< HEAD
      subject: self,
      name: 'created',
=======
      trackable: self,
      name: 'added',
>>>>>>> user-activity-feed
      direction: 'by',
      user: user,
      value: self.num_of_units_taken
    )
  end
end
