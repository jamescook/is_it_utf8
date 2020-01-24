require_relative "./lib/is_it_utf8/version"

Gem::Specification.new do |s|
  s.name    = "is_it_utf8"
  s.version = IsItUtf8::VERSION
  s.summary = "Fast UTF8 Validator"
  s.author  = "James Cook"
  s.platform = Gem::Platform::RUBY
  s.homepage = "https://github.com/jamescook/is_it_utf8"

  s.files = Dir.glob("ext/**/*.{c,h,rb}") +
            Dir.glob("lib/**/*.{rb}")

  s.extensions << "ext/is_it_utf8/extconf.rb"
  s.licenses << "MIT"

  s.add_development_dependency "rake-compiler", "~> 1"
  s.add_development_dependency "minitest", "~> 5"
  s.required_ruby_version = '> 2.1'
end
