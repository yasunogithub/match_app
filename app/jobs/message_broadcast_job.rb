class MessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message)
    ActionCable.server.broadcast "room_channel_#{message.room_id}", sent_user: message.sent_user, message: message.content, created_at: message.created_at.in_time_zone('Tokyo').strftime("%Y-%m-%d %H:%M")
    # Do something later
  end
end
