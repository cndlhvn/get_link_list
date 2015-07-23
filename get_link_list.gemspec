$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "get_link_list/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "get_link_list"
  s.version     = GetLinkList::VERSION
  s.authors     = ["candle"]
  s.email       = ["progted@gmail.com"]
  s.homepage    = "https://github.com/cndlhvn"
  s.summary     = "This Gem display rails GET path automatically"
  s.description = "It showed your rails project GET path"

  s.files = Dir["{app,config,db,lib}/**/*",'vendor/assets/**/*', "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]


end
