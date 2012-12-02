class Team
  include Mongoid::Document
  field :name, type: String
  field :color, type: String

  has_many :installations
end
