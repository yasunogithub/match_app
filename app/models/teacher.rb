class Teacher < ApplicationRecord
    has_many :messages, dependent: :destroy
end
