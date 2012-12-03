class TeamsController < InheritedResources::Base
  respond_to :html, :json, :js

  def update
    update! { home_url }
  end
  def create
    create! { home_url }
  end
end
