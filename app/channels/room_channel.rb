class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel_#{params['room_id']}"
    # stream_from "some_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    Message.create! user_id: params['user_id'], teacher_id: params['teacher_id'], room_id: params['room_id'], sent_user: params['sent_user'], content: data['message']
  end
end
