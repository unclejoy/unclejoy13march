class Users::RegistrationsController< Devise::RegistrationsController
	
	protected

  def sign_up_params
    params.require(:user).permit(:name, :mobile, :email,:house_no ,:locality,:pincode,:password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :mobile, :email,:house_no ,:locality,:pincode, :password, :password_confirmation, :current_password)
  end

end