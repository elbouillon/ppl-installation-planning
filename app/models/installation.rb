class Installation
  include Mongoid::Document
  field :start_on, type: Date
  field :end_on, type: Date
  field :description, type: String

  belongs_to :team
  belongs_to :project

  def as_json(options = {})
    {
      title: "[#{project.try(:name)}] #{description}",
      start: start_on,
      end: end_on,
      id: id,
      color: team.color
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
end
