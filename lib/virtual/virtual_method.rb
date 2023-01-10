module Virtual
  module VirtualMethod
    DefinitionError = Class.new(RuntimeError)

    def self.define(target_class, method_name, strict=nil, &blk)
      if strict.nil?
        strict = true
      end

      if strict
        if target_class.method_defined?(method_name)
          raise DefinitionError, "#{target_class} already has an implementation of the `#{method_name}' method"
        end
      end

      blk ||= proc do |*|
      end

      target_class.send(:define_method, method_name, &blk)
    end
  end
end
