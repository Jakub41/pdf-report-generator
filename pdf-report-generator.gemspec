
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "pdf/report/generator/version"

Gem::Specification.new do |spec|
  spec.name          = "pdf-report-generator"
  spec.version       = Pdf::Report::Generator::VERSION
  spec.authors       = ["Jakub41"]
  spec.email         = ["lemiszewski@gmx.com"]

  spec.summary       = %q{A PDF Report Generator.}
  spec.description   = %q{This generator is based on the binaries of the wkhtmltopdf.org.}
  spec.homepage      = "https://github.com/Jakub41/pdf-report-generator"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.has_rdoc = 'yard'
  spec.metadata['yard.run'] = 'yri'

  spec.add_development_dependency "bundler", "~> 1.16.a"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_development_dependency "yard"
end
