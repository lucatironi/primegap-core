require_relative "lib/primegap/core/version"

Gem::Specification.new do |spec|
  spec.name        = "primegap-core"
  spec.version     = Primegap::Core::VERSION
  spec.authors     = [ "Luca Tironi" ]
  spec.email       = [ "luca.tironi@gmail.com" ]
  spec.homepage    = "https://lucatironi.net"
  spec.summary     = "App Business Logic as a Rails Engine"
  spec.description = "App Business Logic as a Rails Engine"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  # Rails dependencies
  spec.add_dependency "rails", ">= 8.0.0"
  spec.add_dependency "bcrypt", "~> 3.1.7"

  # Development/Test dependencies
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "rubocop-rails-omakase"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "shoulda"
end
