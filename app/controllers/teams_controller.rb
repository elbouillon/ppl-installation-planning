class TeamsController < InheritedResources::Base
  def create
    create! { home_url }
  end
end
