class SiteController < ApplicationController
  before_action :check_pagination
  layout 'site'

  private
  
  def check_pagination
    unless user_signed_in?
    params.extract!(:page)
    end
  end
  
  def params_user
     params.require(:user).permit(:first_name, :last_name, :email,
    :password, :password_confirmation,
     user_profile_attributes: [:id , :zip_code, :address, :gender,
    :birthdate, :avatar])
  end
end
