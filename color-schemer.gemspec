# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{color-schemer}
  s.version = "0.2.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.5")
  s.authors = ["Scott Kellum", "Mason Wendell"]
  s.date = %q{2011-10-06}
  s.description = %q{Create color schemes with ease.}
  s.email = %w{scott@scottkellum.com}
  s.has_rdoc = false
  s.files = Dir.glob("lib/*.*")
  s.files += Dir.glob("stylesheets/**/*.*")
  s.files += Dir.glob("templates/**/*.*")
  s.homepage = %q{https://github.com/scottkellum/color-schemer}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{color-schemer}
  s.rubygems_version = %q{1.5.2}
  s.summary = %q{Create color schemes with ease.}
  s.add_dependency(%q<compass>, ["~> 0.12"])
  s.add_dependency(%q<compass-blend-modes>, ["~> 0.0.2"])
end