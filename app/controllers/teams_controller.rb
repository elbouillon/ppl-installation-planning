class TeamsController < InheritedResources::Base
  respond_to :html, :json, :js

  def update
    update! { root_url }
  end
  def create
    create! { root_url }
  end
end
