class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel_#{params['room_id']}"
    # stream_from "some_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    # m = Message.new(user_id: current_user.id, teacher_id: params['teacher_id'], room_id: params['room_id'], content: data['message'])
    # m.save!(:validate => false)
    Message.create! user_id: current_user.id, teacher_id: params['teacher_id'], room_id: params['room_id'], content: data['message']
  end
end
