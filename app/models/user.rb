class User < ActiveRecord::Base


  validates :name, presence: true, length: { maximum: 50 }


  VALID_EMAIL_PATTERN = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    format: { with: VALID_EMAIL_PATTERN },
                    uniqueness: { case_sensitive: false }

  validates :password, presence: true, length: { minimum: 6 }


  has_secure_password


  before_save { self.email = email.downcase }

end
