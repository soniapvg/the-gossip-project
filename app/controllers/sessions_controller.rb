class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => [:destroy]

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      log_in(user)
      redirect_to(new_gossip_path)
    else
      # flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_back_or_to(gossips_path)
  end

end
