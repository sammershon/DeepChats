class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chat_room

  validates :body, presence: true, length: {minimum: 2, maximum: 1000}

  # callback from app/jobs/message_broadcast_job.rb that fires after message is saved
  after_create_commit { MessageBroadcastJob.perform_later(self) }

  # timestamp for messages
  def timestamp
    created_at.strftime('%H:%M:%S %d %B %Y')
  end

end
