class User < ApplicationRecord
  has_many :teams
	has_secure_password

	validates :uname, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL_REGEX }, length: { maximum: 255 }
	validates :password, presence: true, length: { minimum: 6 }
	validates :password_confirmation, presence: true

  	def self.authenticate_with_credentials(email, password)
    	email = email.strip
    	user = User.where('lower(email) = ?', email.downcase).first
    	# If the user exists AND the password entered is correct.
    	if user && user.authenticate(password)
      		user
    	else
      		nil
    	end
  	end

end
