# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'relayer/version'

Gem::Specification.new do |spec|
  spec.name          = 'relayer'
  spec.version       = Relayer::VERSION
  spec.authors       = ['Ismail Moghul', 'et al']
  spec.email         = 'ismail.moghul@gmail.com'
  spec.summary       = 'OCT Segmentation.'
  spec.description   = 'OCT Segmentation.'
  spec.homepage      = 'https://github.com/IsmailM/relayer'
  spec.license       = 'AGPL'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'capybara', '~> 2.4', '>= 2.4.4'
  spec.add_development_dependency 'rack-test', '~> 0.6'
  spec.add_development_dependency 'rake', '~>10.3'
  spec.add_development_dependency 'rspec', '~> 2.8', '>= 2.8.0'
  spec.add_development_dependency 'sass', '~>3.5'
  spec.add_development_dependency 'w3c_validators', '~>1.1'

  spec.add_dependency 'awesome_print', '~>1.8'
  spec.add_dependency 'omniauth', '~>1.6'
  spec.add_dependency 'omniauth-google-oauth2', '~>0.5'
  spec.add_dependency 'passenger', '~>5.1'
  spec.add_dependency 'pry', '~>0.11'
  spec.add_dependency 'sinatra', '~>2.0'
  spec.add_dependency 'slim', '~>3.0'
  spec.add_dependency 'slop', '~>3.6'
  spec.post_install_message = <<~INFO

    ------------------------------------------------------------------------
      Thank you for Installing Relayer!

      To launch Relayer execute 'relayer' from command line.

        $ relayer [options]

      Visit https://github.com/IsmailM/Relayer for more information.
    ------------------------------------------------------------------------

  INFO
end
