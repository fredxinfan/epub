# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'epub/version'

Gem::Specification.new do |s|
  s.name = "epub"
  s.version = Epub::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ["Xin Fan"]
  s.email = ["fredxinfan@gmail.com"]
  s.homepage = "http://github.com/fredxinfan/epub"
  s.summary = "Access and modify the contents of an EPUB"
  s.description = "Access and modify the contents of an EPUB file"

  s.required_rubygems_version = ">= 1.3.6"
  #s.rubyforge_project = "example"

  # No tests yet
  s.add_development_dependency "rspec", "~> 3.5"
  s.add_development_dependency "yard", "~> 0.9.5"

  s.add_dependency "rubyzip", "~> 1.2"
  s.add_dependency "sass", "~> 3.4"
  s.add_dependency "nokogiri", "~> 1.6"
  s.add_dependency "sanitize", "~> 4.4"
  s.add_dependency "fastimage", "~> 2.0"
  s.add_dependency "yui-compressor", "~> 0.12.0"
  s.add_dependency "html_compressor", "~> 0.0.3"

  s.files = Dir.glob("{bin,lib}/**/*") + %w(README.md)
  s.executables = ['epub']
  s.require_path = 'lib'
end
