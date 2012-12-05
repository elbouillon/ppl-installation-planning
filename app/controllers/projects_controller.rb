class ProjectsController < InheritedResources::Base
  respond_to :json, :html

  def update
    update! { root_url }
  end

  def create
    create! { root_url }
  end
end
