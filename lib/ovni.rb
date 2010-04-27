require 'tempfile'

ovni_path = File.expand_path('../ovni/', __FILE__)

require "#{ovni_path}/version"
require "#{ovni_path}/config"

module OVNI
  def self.html_to_pdf(html, pdf_file, options = {})
    options = Config.options.merge(options)

    class_path = [File.join(File.expand_path(File.dirname(__FILE__)), "ovni/Xhtml2Pdf"), options[:class_path]].join(options[:classpath_separator])

    Tempfile.open("ovni") do |file|
      file << html
      file.flush

      command = "#{options[:java_bin]} -Xmx#{options[:max_memory_mb]}m -Djava.awt.headless=true -cp #{class_path} Xhtml2Pdf #{file.path} #{File.expand_path(pdf_file)}"

      system(command)
    end
  end
end
