class InstallationsController < ApplicationController
  respond_to :json
  def index
    respond_with Installation.where(
      :start_on.gte => Time.at(params[:start].to_i),
      :end_on.lte => Time.at(params[:end].to_i)
    )
  end
end
