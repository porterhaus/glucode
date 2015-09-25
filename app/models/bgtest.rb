class Bgtest < ActiveRecord::Base
  belongs_to :user
  has_many :meals, through: :user
  has_many :injections, through: :user

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
      subject: self,
      value: self.value,
      name: 'created',
      direction: 'by',
      user: user
    )
  end

end
