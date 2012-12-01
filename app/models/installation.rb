class Installation
  include Mongoid::Document
  field :start_on, type: Date
  field :end_on, type: Date
  field :description, type: String

  belongs_to :team
  belongs_to :project

  def self.to_plan
    where(start_on: nil, end_on: nil)
  end
end
