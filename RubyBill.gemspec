# frozen_string_literal: true

require_relative "lib/RubyBill/version"

Gem::Specification.new do |spec|
  spec.name = "RubyBill"
  spec.version = RubyBill::VERSION
  spec.authors = ["Francesco Masala"]
  spec.email = ["fmasala@hyperbit.it"]

  spec.summary = "Wrapper for Datev Koinos' SuperBill software"
  spec.description = "Wrapper for Datev Koinos' SuperBill software that structures SuperBill developer
 endpoints and XML files"
  spec.homepage = "https://gitlab.com/HyperBit-IT/rubybill/"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["https://gitlab.com"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://gitlab.com/HyperBit-IT/rubybill"
  spec.metadata["changelog_URI"] = "https://gitlab.com/HyperBit-IT/rubybill/-/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
