class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings
  has_many :locations

  has_many :notifications, foreign_key: :recipient_id

  has_one_attached :photo

  def last_active_chat
    Chat.involving(self).ordered_by_last_active.first
  end

  def sender?(chat)
    self == chat.sender
  end

  def recipient?(chat)
    self == chat.recipient
  end
end
