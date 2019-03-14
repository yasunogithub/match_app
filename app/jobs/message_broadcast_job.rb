class MessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message)
    ActionCable.server.broadcast 'room_channel', user_email: message.user_email, message: message.content
    # Do something later
  end
end
