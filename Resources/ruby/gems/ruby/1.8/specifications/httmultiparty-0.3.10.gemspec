# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{httmultiparty}
  s.version = "0.3.10"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Johannes Wagener"]
  s.date = %q{2013-04-09}
  s.description = %q{HTTMultiParty is a thin wrapper around HTTParty to provide multipart uploads.}
  s.email = ["johannes@wagener.cc"]
  s.files = ["lib/httmultiparty/multipart_post.rb", "lib/httmultiparty/multipart_put.rb", "lib/httmultiparty/multipartable.rb", "lib/httmultiparty/version.rb", "lib/httmultiparty.rb", "README.md"]
  s.homepage = %q{http://github.com/jwagener/httmultiparty}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{HTTMultiParty is a thin wrapper around HTTParty to provide multipart uploads.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>, [">= 0.7.3"])
      s.add_runtime_dependency(%q<multipart-post>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<fakeweb>, [">= 0"])
    else
      s.add_dependency(%q<httparty>, [">= 0.7.3"])
      s.add_dependency(%q<multipart-post>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<fakeweb>, [">= 0"])
    end
  else
    s.add_dependency(%q<httparty>, [">= 0.7.3"])
    s.add_dependency(%q<multipart-post>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<fakeweb>, [">= 0"])
  end
end
