module Virtual
  module VirtualMethod
    Error = Class.new(RuntimeError)

    def self.define(target_class, method_name, &blk)
      ## Re-enable when possible. Caused regressions in core libraries - Scott, Tue Jan 10 2022
      # if target_class.method_defined?(method_name)
      #   raise Error, "#{target_class} already has an implementation of the #{method_name} method"
      # end

      blk ||= proc do |*|
      end

      target_class.send(:define_method, method_name, &blk)
    end
  end
end
