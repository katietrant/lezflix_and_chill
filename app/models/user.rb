class User < ActiveRecord::Base
  validates :email, :username, uniqueness: true
  validates  :email, :username, :password_hash, presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
      self.password_hash = @password
  end

  def authenticate(plain_password)
    self.password == plain_password
  end
end
