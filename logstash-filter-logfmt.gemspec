Gem::Specification.new do |s|
  s.name            = 'logstash-filter-logfmt'
  s.version         = '0.1.12'
  s.licenses        = ['Apache License (2.0)']
  s.summary         = 'This filter may be used to decode Logfmt messages'
  s.description     = 'This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install logstash-filter-logfmt. This gem is not a stand-alone program'
  s.authors         = ['Tim Buchwaldt', 'Aleksandr Zykov']
  s.email           = 'alexandrz@gmail.com'
  s.homepage        = 'https://github.com/alexandrz/logstash-filter-logfmt/'
  s.require_paths = ['lib']

  # Files
  s.files = `git ls-files`.split($OUTPUT_RECORD_SEPARATOR)

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { 'logstash_plugin' => 'true', 'logstash_group' => 'filter' }

  # Gem dependencies
  s.add_runtime_dependency 'logstash-core-plugin-api', '>= 1.60', '<= 2.99'
  s.add_runtime_dependency 'logfmt', '~> 0.0.8'

  s.add_development_dependency 'logstash-devutils', ['>= 1.0.0']
  s.add_development_dependency 'rspec'
end
