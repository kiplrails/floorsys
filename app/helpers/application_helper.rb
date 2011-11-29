module ApplicationHelper
  # Helper Method to change the default user login path to root path
  def resource_name
      :user
    end

    def resource
      @resource ||= User.new
    end

    def devise_mapping
      @devise_mapping ||= Devise.mappings[:user]
    end
  
end
