class SessionController < ApplicationController
  def new
  end

  def create
    admin = Admin.find_by :email => params[:email]
    if admin.present? && admin.authenticate(params[:password])
        session[:admin_id] = admin.id
        redirect_to subscribers_path
    else
        redirect_to root_path
      end
    end

    def destroy
      session[:admin_id] = nil
      redirect_to root_path
    end
end