class SessionsController < Devise::SessionsController
  def create
    super
    user_name = current_user.full_name.presence || current_user.email
    flash[:notice] = "Hello, #{user_name}!"
  end
end
