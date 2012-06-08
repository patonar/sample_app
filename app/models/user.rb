class User < ActiveRecord::Base
	attr_accessible :name, :email, :password, :password_confirmation
	has_secure_password

	# Before Save
	before_save { |user| user.email = email.downcase}

	# Model Validations
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :name, presence: true, length: {maximum: 50}
	validates :email, presence: true, format: {with: VALID_EMAIL_REGEX},
				uniqueness: { case_sensitive: false }

	validates :password, presence: true, length: {minimum: 6}
	validates :password_confirmation, presence: true





end
