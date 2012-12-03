class Team
  include Mongoid::Document
  field :name, type: String
  field :color, type: String

  has_many :installations

  def form_title
    self.new_record? ? '.add_team' : '.update_team'
  end
end
