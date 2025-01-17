# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = 'custom_error_message'
  s.version = '1.4.0'

  s.platform = Gem::Platform::RUBY
  s.authors = ["David Easley", "Jeremy Durham", "Justin Nguyen"]
  s.email = %q{justin.ntt@gmail.com}
  s.homepage = 'https://github.com/kidizen/custom-err-msg'
  s.summary = 'Custom Error Message plugin for Rails'
  s.description = 'This plugin gives you the option to not have your custom validation error message prefixed with the attribute name'

  s.rubygems_version = '>= 1.3.5'

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]
end
