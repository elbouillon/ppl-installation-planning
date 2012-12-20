class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_apps
    @user = User.find_for_googleafederated(request.env["omniauth.auth"], current_user)
    #logger.debug request.env['omniauth.auth'].to_yaml
    logger.debug "---------------------"
    logger.debug request.env["omniauth.auth"]

    flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Google"

    sign_in_and_redirect @user, :event => :authentication
  end
end
