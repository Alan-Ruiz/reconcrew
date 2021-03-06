class Chat < ApplicationRecord
    belongs_to :sender, foreign_key: :sender_id, class_name: 'User'
    belongs_to :recipient, foreign_key: :recipient_id, class_name: 'User'

    has_many :messages, dependent: :destroy

    validates_uniqueness_of :sender_id, scope: :recipient_id

    scope :involving, -> (user) {
      where("chats.sender_id = ? OR chats.recipient_id = ?", user.id, user.id)
    }

    scope :between, -> (user_A, user_B) {
      where("(chats.sender_id = ? AND chats.recipient_id = ?) OR (chats.sender_id = ? AND chats.recipient_id = ?)", user_A, user_B, user_B, user_A)
    }

    scope :ordered_by_last_active, -> {
      includes(:messages).order('messages.created_at DESC')
    }


  def other_user(user)
    user.sender?(self) ? recipient : sender
  end
end
