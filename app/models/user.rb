class User < ApplicationRecord
  # Include default devise modules. Others available are:
  #:confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    #before_save { self.email = email.downcase }
    	#VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	#validates :email, presence: true, length: { maximum: 255 },
	                  #format: { with: VALID_EMAIL_REGEX },
	                  #uniqueness: { case_sensitive: false }
	#has_secure_password
	validates :password, presence: true, length: { minimum: 6 }
  has_many :comments
  has_many :topics
  has_many :messages, through: :topics, dependent: :destroy 

def name

end

def admin
  @admin = User.find_by_email("rkraft@rkraft.com.ua")
  @admin.admin = true
end
end
