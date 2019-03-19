module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = find_verified_user
      logger.add_tags 'ActionCable', current_user.name
    end

    protected
      def find_verified_user
        session_key = cookies.encrypted[Rails.application.config.session_options[:key]]
        verified_id = session_key['warden.user.user.key']
        if !verified_id.nil?
          verified_id = session_key['warden.user.user.key'][0][0]
          verified_user = User.find_by(id: verified_id)
        elsif verified_user = Teacher.find_by(id: cookies.signed[:teacher_id])
          verified_user
        else
          reject_unauthorized_connection
        end
      end
  end
end
