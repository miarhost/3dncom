class Message < ApplicationRecord
belongs_to :topic
	validates :body, presence: true, length: {minimum: 2, maximum: 350}
end
