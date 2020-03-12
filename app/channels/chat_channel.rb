class ChatChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    Chat.involving(current_user).each do |chat|
      stream_from "chat_#{chat.id}"
    end
  end

  def send_message(payload)
    message = Message.new(user: current_user, chat_id: payload["id"], body: payload["message"])
   return unless message.save
    ActionCable.server.broadcast(
      "chat_#{payload['id']}",
       sender_message: render_sender_message(message),
       recipient_message: render_recipient_message(message)
      )
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    stop_all_streams
  end

  private

  def render_sender_message(message)
    ApplicationController.render(
          partial: 'messages/message',
          locals: {
            message: message,
            other_user_id: message.other_user.id,
            current_user: current_user
          }
      )
  end

  def render_recipient_message(message)
    ApplicationController.render(
          partial: 'messages/message',
          locals: {
            message: message,
            other_user_id: message.user.id,
            current_user: current_user
          }
      )
  end

end
