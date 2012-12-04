class Team
  include Mongoid::Document
  include Ppl::Document
  field :name, type: String
  field :color, type: String

  has_many :installations
end
