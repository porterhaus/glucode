class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ## Active record relationships

  ## Validations
  validates_presence_of :name
  validates :auth_token, uniqueness: true

  ## Callbacks
  before_create :set_auth_token, :set_user_role

  ## Roles
  #  Possibilities: { patient, caregiver, friend/follower }
  #  This will be an open when creating a new User.
  def set_user_role
    self.role = "patient"
  end

  def set_auth_token
    self.auth_token = generate_auth_token
  end

  def generate_auth_token
    loop do
      token = SecureRandom.hex
      break token unless self.class.exists?(auth_token: token)
    end
  end

end
