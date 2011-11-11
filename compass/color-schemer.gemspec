# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{color-schemer}
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.5")
  s.authors = ["Scott Kellum", "Mason Wendell"]
  s.date = %q{2011-10-06}
  s.description = %q{Create color schemes with ease.}
  s.email = %w{scott@scottkellum.com}
  s.has_rdoc = false
  s.files = [
    "color-schemer.gemspec",
    "lib/color-schemer.rb",
    "stylesheets/_color-schemer.sass"
  ]
  s.homepage = %q{https://github.com/scottkellum/color-schemer}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{color-schemer}
  s.rubygems_version = %q{0.1.2}
  s.summary = %q{Create color schemes with ease.}
  s.add_dependency(%q<compass>, ["~> 0.11"])
end