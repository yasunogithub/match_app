class MessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message)
    # if current_user?
      ActionCable.server.broadcast "room_channel_#{message.room_id}", sent_user: message.sent_user, message: message.content
      # Do something later
    # end
  end
end
