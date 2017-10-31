class SessionsController < ApplicationController
  def create
    auth=request.env["omniauth.auth"]
    user=Session.find_by_provider_and_uid(auth["provider"],auth["uid"]) ||
         Session.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to movie_index_path
  end
  def destroy
    session.delete(:user_id)
    flash[:notice] = 'Logged out successfully.'
    redirect_to welcome_index_path
  end
  def failure
    redirect_to welcome
  end
  def signupdata
    unless Session.find_by_provider(session_params[:provider])
      @session = Session.new(session_params)
      @session.image = "/assets/bg3.jpg"
      @session.save
      flash[:notice] = "#{@session.name} was successfully Sing-up." 
	    redirect_to welcome_index_path
    else
	    @session = Session.new(session_params)
	    flash[:warning] = "#{@session.provider} already exist."
	    redirect_to signup_path
    end
  end
  def logindata
    user = Session.find_by_provider_and_uid(session_params[:provider], session_params[:uid])
    # If the user exists AND the password entered is correct.
    if user
        session[:user_id] = user.id
        redirect_to movie_index_path
    else
        # If user's login doesn't work, send them back to the login form.
        redirect_to welcome_index_path
    end
  end
  private
  def session_params
    params.require(:session).permit(:provider, :uid, :name, :image);
  end
end