class ApplicationController < ActionController::Base
    before_action :fetch_admin
    
    def fetch_admin
        @current_admin = Admin.find_by :id => session[:admin_id] if session[:admin_id].present?
        session[:admin_id] = nil unless @current_admin.present?
    end
end
