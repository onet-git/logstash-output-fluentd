Gem::Specification.new do |s|
  s.name = 'logstash-output-fluentd'
  s.version     = "1.0.0"
  s.licenses    = ["Apache License (2.0)"]
  s.summary     = "Logstash plugin to forward data to fluentd nodes"
  s.description = "This gem is a logstash plugin to forward data from logstash to fluentd. This gem is not a stand-alone program."
  s.authors     = ["Satoshi Tagomori"]
  s.email       = "tagomoris@gmail.com"
  s.homepage    = "https://github.com/tagomoris/logstash-output-fluentd"
  s.require_paths = ["lib"]

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']
  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "output" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core-plugin-api", ">= 1.60", "<= 2.99"
  s.add_runtime_dependency "logstash-codec-plain"
  s.add_runtime_dependency "msgpack", "~> 1.0"
  # s.add_runtime_dependency "jruby-openssl", ">= 0.9.11" # Required to support TLSv1.2 # TODO: for secure-forward support
  s.add_development_dependency "logstash-devutils"
end
