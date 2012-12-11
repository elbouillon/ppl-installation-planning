class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!

  before_filter :check_phrase

  def check_phrase
    if params['t']
      session['translate'] = params['t'] == 'a' ? true : false
    end
  end
end
