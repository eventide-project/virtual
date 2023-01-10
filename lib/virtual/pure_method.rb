module Virtual
  module PureMethod
    Error = Class.new(RuntimeError)

    def self.define(target_class, method_name)
      if target_class.method_defined?(method_name)
        raise Error, "#{target_class} already has an implementation of the #{method_name} method"
      end

      target_class.send(:define_method, method_name) do |*args|
        raise Error, "Pure virtual (abstract) method #{method_name} of #{self.class.name} must be implemented"
      end
    end
  end
end
