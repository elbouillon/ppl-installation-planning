class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_apps
    @user = User.find_for_googleapps_oauth(request.env["omniauth.auth"], current_user)

    flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Google"

    sign_in_and_redirect @user, :event => :authentication
  end
end
