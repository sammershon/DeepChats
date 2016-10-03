class User < ApplicationRecord
  has_many :chat_rooms, dependent: :destroy
  has_many :messages, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # take the half of a user's email before the @ in their email and set as username
  def name
    email.split('@')[0]
  end

end