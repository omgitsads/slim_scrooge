# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{slim_scrooge}
  s.version = "1.0.11"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Stephen Sykes"]
  s.date = %q{2010-12-20}
  s.description = %q{Slim scrooge boosts speed in Rails ActiveRecord Models by only querying the database for what is needed.}
  s.email = %q{sdsykes@gmail.com}
  s.extensions = ["ext/Rakefile"]
  s.extra_rdoc_files = [
    "README.textile"
  ]
  s.files = [
    "README.textile",
     "Rakefile",
     "VERSION.yml",
     "ext/Rakefile",
     "ext/callsite_hash.c",
     "ext/extconf.rb",
     "lib/slim_scrooge.rb",
     "lib/slim_scrooge/callsite.rb",
     "lib/slim_scrooge/callsites.rb",
     "lib/slim_scrooge/monitored_hash.rb",
     "lib/slim_scrooge/result_set.rb",
     "lib/slim_scrooge/simple_set.rb",
     "lib/slim_scrooge/slim_scrooge.rb",
     "test/active_record_setup.rb",
     "test/helper.rb",
     "test/models/course.rb",
     "test/schema/schema.rb",
     "test/setup.rb"
  ]
  s.homepage = %q{http://github.com/sdsykes/slim_scrooge}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Slim_scrooge - serious optimisation for ActiveRecord}
  s.test_files = [
    "test/active_record_setup.rb",
     "test/helper.rb",
     "test/models/course.rb",
     "test/schema/schema.rb",
     "test/setup.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

