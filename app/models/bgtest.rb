class Bgtest < ActiveRecord::Base
  belongs_to :user
  has_many :meals, through: :user
  has_many :injections, through: :user

  validates :value, numericality: { only_integer: true }

  #before_create :set_default_category
  after_create :create_activity

  default_scope { order('created_at DESC') }

  def set_default_category
    self.category = "smbg"
  end

  def group_by_criteria
    created_at.to_date.to_s(:db)
  end

  private

  def create_activity
    Activity.create(
<<<<<<< HEAD
      subject: self,
      value: self.value,
      name: 'created',
=======
      trackable: self,
      name: 'added',
>>>>>>> user-activity-feed
      direction: 'by',
      user: user,
      value: self.value
    )
  end

end
