class Bgtest < ActiveRecord::Base
  belongs_to :user

  before_create :set_default_category

  default_scope { order('created_at DESC') }

  def set_default_category
    self.category = "smbg"
  end
end
