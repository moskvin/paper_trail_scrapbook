# frozen_string_literal: true

require File.expand_path('lib/paper_trail_scrapbook/version', __dir__)

Gem::Specification.new do |gem|
  gem.name        = 'paper_trail_scrapbook'
  gem.version     = PaperTrailScrapbook::VERSION.dup
  gem.summary     = 'Paper Trail Scrapbook'
  gem.description = "Human Readable Change Log for Paper Trail'd data"
  gem.authors     = ['Timothy Chambers']
  gem.email       = 'tim@hint.io'
  gem.files       = `git ls-files`.split("\n")
  gem.homepage    = 'https://github.com/hintmedia/paper_trail_scrapbook'
  gem.license     = 'MIT'

  gem.required_rubygems_version = '>= 1.3.6'
  gem.required_ruby_version = '>= 3.1.0'

  # Rails does not follow semver, makes breaking changes in minor versions.
  gem.add_dependency 'activerecord'
  gem.add_dependency 'adamantium'
  gem.add_dependency 'concord'
  gem.add_dependency 'paper_trail', ['>= 5.2', '<= 12.2.0']

  gem.add_development_dependency 'ffaker', '~> 2.20'
  gem.add_development_dependency 'rake', '~> 13.0.1'

  # Why `railties`? Possibly used by `spec/dummy_app` boot up?
  gem.add_development_dependency 'railties', '= 7.0.2'

  gem.add_development_dependency 'codeclimate-test-reporter', '~> 1.0.7'
  gem.add_development_dependency 'database_cleaner', '~> 1.2'
  gem.add_development_dependency 'loofah', '~> 2.13.0'
  gem.add_development_dependency 'mutant'
  gem.add_development_dependency 'mutant-rspec'
  gem.add_development_dependency 'pg', '~> 1.3.2'
  gem.add_development_dependency 'rack', '~> 2.0', '>= 2.0.6'
  gem.add_development_dependency 'rspec-jumpstart'
  gem.add_development_dependency 'rspec_junit_formatter'
  gem.add_development_dependency 'rspec-rails'
  gem.add_development_dependency 'rubocop'
  gem.add_development_dependency 'rubocop-rake'
  gem.add_development_dependency 'rubocop-rspec'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'timecop', '~> 0.9.0'
  gem.metadata['rubygems_mfa_required'] = 'true'
end
