class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  #:confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :articles
  has_many :topicthreads

def admin
  @admin = User.find_by_email("rghostme@gmail.com")
 unless @admin
 	User.all.admin = false
 end
end	


end
