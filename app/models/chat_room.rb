class ChatRoom < ApplicationRecord
  belongs_to :user
  has_many :messages, dependent: :destroy

  def timestamp
    created_at.strftime('%B %d, %Y at %H:%M')
  end
  
end
