$:.unshift( File.expand_path( "../lib", __FILE__ ) )
require 'lab42/context_map/version'
version = Lab42::ContextMap::VERSION
Gem::Specification.new do |s|
  s.name        = 'lab42_context_map'
  s.version     = version
  s.summary     = 'A map impelementation with context, access goodies and representation format enhancements (json, yaml, xml,...)'
  s.description = %{A map impelementation with context, access goodies and representation format enhancements (json, yaml, xml,...)} 
  s.authors     = ["Robert Dober"]
  s.email       = 'robert.dober@gmail.com'
  s.files       = Dir.glob("lib/**/*.rb")
  s.files      += %w{LICENSE README.md}
  s.homepage    = "https://github.com/RobertDober/lab42_context_map"
  s.licenses    = %w{MIT}

  s.required_ruby_version = '>= 2.0.0'
  s.add_dependency 'forwarder2', '~> 0.2'

  s.add_development_dependency 'pry-nav', '~> 0.2'
  s.add_development_dependency 'rspec', '~> 3.2'
  s.add_development_dependency 'cucumber', '~> 1.3'
  s.add_development_dependency 'aruba', '~> 0.6'

  # s.add_development_dependency 'lab42_tmux2', '~> 0.0'
  s.add_development_dependency 'travis-lint', '~> 2.0'
  # s.add_development_dependency 'rake', '~> 10.3'
end
