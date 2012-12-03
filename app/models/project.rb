class Project
  STATES = [:open, :closed]
  include Mongoid::Document
  field :name, type: String
  field :planned, type: Integer
  field :state, type: String, default: :open
  field :delivery_on, type: Date

  has_many :installations

  scope :open, where(state: :open)
  scope :closed, where(state: :closed)

  def delivery
    delivery_on.strftime("%y.%W")
  end
end