$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require 'rails-cache_control/version'

Gem::Specification.new do |s|
  s.name              = "rails-cache_control"
  s.version           = RailsCacheControl::VERSION
  s.platform          = Gem::Platform::RUBY
  s.author            = ["Jianqiu Xiao"]
  s.email             = ["swordray@gmail.com"]
  s.homepage          = "https://bailushuyuan.org"
  s.summary           = "Automatically add HTTP Cache-control header when caches_action expires_in specified."
  s.description       = "Significantly improve cached action reload speed."
  s.license           = "MIT"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.required_ruby_version = "~> 2.0"

  s.add_dependency 'rails', '~> 4.0'
	s.add_dependency 'actionpack-action_caching', '~> 1.1'
end
