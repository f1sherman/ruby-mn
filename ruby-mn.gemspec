# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby/mn/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby-mn"
  spec.version       = Ruby::Mn::VERSION
  spec.authors       = ["Brian John"]
  spec.email         = ["brian@brianjohn.com"]

  spec.summary       = %q{Print the date of the next Ruby MN Meetup}
  spec.description   = %q{Print the date of the next Ruby MN Meetup}
  spec.homepage      = "https://github.com/f1sherman/ruby-mn"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
