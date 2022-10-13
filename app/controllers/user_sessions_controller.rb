class UserSessionsController < ApplicationController
  def new
    @session = UserSession.new(session)
  end

  def create
    @session = UserSession.new(session, params[:user_session])
    if @session.authenticate
      redirect_to '/'
    else
      redirect_to '/usuarios/new'
    end
  end

  def destroy
    # Ainda não :-)
  end
end
