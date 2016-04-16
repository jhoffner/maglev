# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'maglev/version'

Gem::Specification.new do |spec|
  spec.name          = "maglev"
  spec.version       = Maglev::VERSION
  spec.authors       = ["jhoffner"]
  spec.email         = ["jake.hoffner@gmail.com"]

  spec.summary       = 'Supersize your Rails with powerful listeners and service objects'
  spec.description   = 'A set of extensions for Rails which makes managing large app code bases much easier'
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'globalid', '>= 0.3.0'
  spec.add_dependency 'sidekiq'
  spec.add_dependency 'activemodel'
  spec.add_dependency 'request_store'
  spec.add_dependency 'activesupport'
  spec.add_dependency 'concurrent-ruby'
  spec.add_development_dependency 'rails'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-its'
end
