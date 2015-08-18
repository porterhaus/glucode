class Bgtest < ActiveRecord::Base
  belongs_to :user
  has_many :meals, through: :user
  has_many :injections, through: :user

  before_create :set_default_category

  default_scope { order('created_at DESC') }

  def set_default_category
    self.category = "smbg"
  end
end
