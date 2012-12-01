class Team
  include Mongoid::Document
  field :name, type: String
  field :css_class, type: String

  has_many :installations

  before_create do |d|
    d.css_class = name.parameterize
  end
end
