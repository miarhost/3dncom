class Subscription < ApplicationRecord
	#before_save {self.email = self.email.downcase}
	#VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	#validates :email, #presence: true,
	         #length: { minimum: 12, maximum: 255 },
	         #format: {with: VALID_EMAIL_REGEX }#,
	         #uniqueness: { case_sensitive: false }
end
