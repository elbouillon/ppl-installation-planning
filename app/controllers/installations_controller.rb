class InstallationsController < InheritedResources::Base
  respond_to :json, :html
  def index
    start_on = Time.at(params[:start].to_i).to_date - 1.day
    end_on = Time.at(params[:end].to_i).to_date + 1.day
    respond_with Installation.where(end_on: start_on..end_on).includes(:team)
  end

  def move
    render json: Installation.find(params[:id]).move(params[:days])
  end

  def resize
    render json: Installation.find(params[:id]).resize(params[:days])
  end

  def drop
    render json: Installation.find(params[:id]).drop(params[:date])
  end

  def create
    create! { home_url }
  end

  def update
    update! { home_url }
  end

  def destroy
    destroy! { home_url }
  end
end