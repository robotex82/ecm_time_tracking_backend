$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'ecm/time_tracking/backend/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'ecm_time_tracking_backend'
  s.version     = Ecm::TimeTracking::Backend::VERSION
  s.authors     = ['Roberto Vasquez Angel']
  s.email       = ['roberto@vasquez-angel.de']
  s.homepage    = 'https://github.com/robotex82/ecm_time_tracking_backend'
  s.summary     = 'Ecm::TimeTracking::Backend.'
  s.description = 'Ecm::TimeTracking::Backend Module.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']

  s.add_dependency 'rails'
  s.add_dependency 'chartkick'
end
