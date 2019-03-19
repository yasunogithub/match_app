class Message < ApplicationRecord
  after_create_commit { MessageBroadcastJob.perform_later self }
  belongs_to :user
  belongs_to :teacher
  belongs_to :room

  def user_email
    user.email
  end

  def teacher_name
    teacher.name
  end
end
