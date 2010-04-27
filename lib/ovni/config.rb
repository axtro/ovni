module OVNI
  class Config
    # default options
    @@options = { :max_memory_mb => 64,
                  :java_bin => "java",
                  :classpath_separator => ':',
                  :class_path => ["bouncy_castle/bcprov-jdk16-136.jar", "flying_saucer/core-renderer.jar", "itext/iText-2.0.8.jar"].collect{|n| File.join(File.expand_path(File.dirname(__FILE__)), n)}
    }

    if respond_to?(:cattr_accessor)
      cattr_accessor :options
    else
      def self.options
        @@options
      end
    end
  end

end