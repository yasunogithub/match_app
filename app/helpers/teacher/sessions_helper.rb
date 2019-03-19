module Teacher::SessionsHelper
    def log_in(teacher)
        session[:teacher_id] = teacher.id
        cookies.permanent.signed[:teacher_id] = teacher.id
    end

    def current_teacher
        @current_teacher ||= Teacher.find_by(id: session[:teacher_id]) if session[:teacher_id]
    end

    def teacher_logged_in?
        !current_teacher.nil?
    end
end
