Rails.application.config.generators do |g|
  g.fixture_replacement :factory_girl
  g.orm             :mongoid
  g.test_framework  :mini_test
  g.template_engine :haml
end
