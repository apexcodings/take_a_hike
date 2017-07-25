class User < ApplicationRecord
  has_secure_password
  has_one :account

  after_create :register_account

  validates :email, uniqueness: true
  validates :email, :password, :password_confirmation, presence: true
  validates :password, format: { with: /(?=.*[a-z])(?=.*[A-Z])(?=.*\d)./,
    message: 'must include at least one lowercase letter, one uppercase letter, and one digit' }

  def register_account
    user = User.last
    Account.create!(user_id: user.id)
  end

end
