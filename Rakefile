require 'rake'
$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "ovni/version"
require "ovni/config"

desc 'Compile the Xhtml2Pdf helper from source.'
task :compile_xhtml2pdf do |t|
  source_path = "src/Xhtml2Pdf.java"
  destination_path = "lib/ovni/Xhtml2Pdf/"
  command = "javac -classpath #{OVNI::Config.options[:class_path].join(":")} -d #{destination_path} #{source_path}"
  system(command)
end

desc 'Build OVNI\'s gem file.'
task :build => :compile_xhtml2pdf do
  system "gem build ovni.gemspec"
end

desc 'Push the gem with the current version to rubygems.org.'
task :release => :build do
  system "gem push ovni-#{OVNI::VERSION}.gem"
end
