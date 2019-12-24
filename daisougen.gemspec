# frozen_string_literal: true

require_relative "lib/daisougen/version"

Gem::Specification.new do |spec|
  spec.name          = "daisougen"
  spec.version       = Daisougen::VERSION
  spec.authors       = ["Takuya Mukohira"]
  spec.email         = ["takuya.mk96@gmail.com"]

  spec.summary       = "大草原ガチャ"
  spec.description   = "大草原ガチャの公式gemです。"
  spec.homepage      = "https://m6a.jp"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mktakuya/daisougen"
  # spec.metadata["changelog_uri"] = ""

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "thor"
end
