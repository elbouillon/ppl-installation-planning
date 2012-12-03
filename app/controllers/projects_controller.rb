class ProjectsController < InheritedResources::Base
  respond_to :json, :html

  def update
    update! { home_url }
  end

  def create
    create! { home_url }
  end
end
