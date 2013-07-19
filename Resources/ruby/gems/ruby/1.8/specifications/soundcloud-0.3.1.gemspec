# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{soundcloud}
  s.version = "0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Johannes Wagener"]
  s.date = %q{2012-12-04}
  s.description = %q{A simple Soundcloud API wrapper based of httparty, multipart-post, httmultiparty}
  s.email = ["johannes@soundcloud.com"]
  s.files = ["lib/soundcloud/array_response_wrapper.rb", "lib/soundcloud/hash_response_wrapper.rb", "lib/soundcloud/version.rb", "lib/soundcloud.rb", "README.md"]
  s.homepage = %q{http://dev.soundcloud.com}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{soundcloud}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{A simple Soundcloud API wrapper}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>, [">= 0.7.3"])
      s.add_runtime_dependency(%q<httmultiparty>, [">= 0.3"])
      s.add_runtime_dependency(%q<hashie>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.5.0"])
      s.add_development_dependency(%q<fakeweb>, [">= 0"])
    else
      s.add_dependency(%q<httparty>, [">= 0.7.3"])
      s.add_dependency(%q<httmultiparty>, [">= 0.3"])
      s.add_dependency(%q<hashie>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.5.0"])
      s.add_dependency(%q<fakeweb>, [">= 0"])
    end
  else
    s.add_dependency(%q<httparty>, [">= 0.7.3"])
    s.add_dependency(%q<httmultiparty>, [">= 0.3"])
    s.add_dependency(%q<hashie>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.5.0"])
    s.add_dependency(%q<fakeweb>, [">= 0"])
  end
end
