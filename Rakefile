# coding: utf-8
abort('Please run this using `bundle exec rake`') unless ENV["BUNDLE_BIN_PATH"]
require 'html-proofer'

desc 'Build the website'
task :build do
  sh 'bundle exec jekyll build'
end

desc 'Preview the website'
task :preview do
  sh 'bundle exec jekyll serve --watch --drafts'
end

desc "Test the website"
task :test => [:build] do
  options = {
    :check_external_hash => true,
    :check_favicon => true,
    :check_html => true,
    :check_img_http => true,
    :check_opengraph => true,
    :check_sri => true,
    :internal_domains => [ 'b-wilhelm.de' ],
    :typhoeus => {
      :connecttimeout => 20,
      :timeout => 200
    }
  }
  begin
    HTMLProofer.check_directory("./_site", options).run
  rescue => msg
    puts "#{msg}"
  end
end

task :default => [:test]
