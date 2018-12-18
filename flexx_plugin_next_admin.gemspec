$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "flexx_plugin_next_admin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "flexx_plugin_next_admin"
  s.version     = FlexxPluginNextAdmin::VERSION
  s.authors     = ["Paulo Henrique Castro"]
  s.email       = ["phlcastro@gmail.com"]
  s.homepage    = ""
  s.summary     = ": Summary of FlexxPluginNextAdmin."
  s.description = ": Description of FlexxPluginNextAdmin."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.10"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'camaleon_cms'
end
