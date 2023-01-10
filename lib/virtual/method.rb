module Virtual
  module Method
    Error = Class.new(RuntimeError)

    def self.define(target_class, method_name, &blk)
      if target_class.method_defined?(method_name)
        raise Error, "#{target_class} already has an implementation of the #{method_name} method"
      end

      blk ||= proc do |*|
      end

      target_class.send(:define_method, method_name, &blk)
    end
  end
end
