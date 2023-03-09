module SessionsHelper

         # Logs in the given user.
         def log_in(usuario)
           session[:user_id] = user.id
         end
       
         # Returns the current logged-in user (if any).
         def current_user
           @current_user ||= Usuario.find_by(id: session[:usuarios_id])
         end
       end