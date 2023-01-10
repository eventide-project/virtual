module Virtual
  module ProtocolMethod
    Error = Class.new(RuntimeError)

    def self.define(target_class, method_name)
      method_defined = target_class.method_defined?(method_name, true) ||
        target_class.private_method_defined?(method_name, true)

      if not method_defined
        target_class.send(:define_method, method_name) do |*args|
          raise Error, "Pure virtual (abstract) protocol method #{method_name} of #{self.class.name} must be implemented"
        end
      end
    end
  end
end
