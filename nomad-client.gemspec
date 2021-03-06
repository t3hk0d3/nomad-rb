# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'nomad-client'
  spec.version       = '0.1.0'
  spec.authors       = ['Igor Yamolov']
  spec.email         = ['clouster@yandex.ru']

  spec.summary       = %q{Ruby DSL and API wrapper for Nomad cluster scheduler}
  spec.description   = %q{Ruby DSL and API wrapper for Nomad cluster scheduler}
  spec.homepage      = 'https://github.com/t3hk0d3/nomad-client'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.5'
end
