module Virtual
  module PureMethod
    Error = Class.new(RuntimeError)
    DefinitionError = Class.new(Error)

    def self.define(target_class, method_name, strict=nil)
      if strict.nil?
        strict = true
      end

      if strict
        if target_class.method_defined?(method_name)
          raise DefinitionError, "#{target_class} already has an implementation of the `#{method_name}' method"
        end
      end

      target_class.send(:define_method, method_name) do |*args|
        raise Error, "Pure virtual (abstract) method `#{method_name}' of #{self.class.name} must be implemented"
      end
    end
  end
end
