module Ppl
  module Document
    def form_title
      klass = self.class.to_s.downcase
      self.new_record? ? ".add_#{klass}" : ".update_#{klass}"
    end
  end
end
