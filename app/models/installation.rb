class Installation
  include Mongoid::Document
  include Ppl::Document
  field :start_on, type: Date
  field :end_on, type: Date
  field :description, type: String

  belongs_to :team
  belongs_to :project

  validates :description, :team, presence: true

  def as_json(options = {})
    {
      title: "[#{project.try(:name)}] #{description}",
      start: start_on,
      end: end_on,
      id: id,
      color: team.color,
      url: Rails.application.routes.url_helpers.installation_path(id)
    }
  end

  def self.to_plan
    where(start_on: nil, end_on: nil)
  end

  def move(nb_days)
    self.start_on += nb_days.to_i.days
    self.end_on += nb_days.to_i.days
    self.save
    self
  end

  def resize(nb_days)
    self.end_on += nb_days.to_i.days
    self.save
    self
  end

  def drop(date)
    self.start_on = date.to_date
    self.end_on = start_on
    self.save
    self
  end
end
