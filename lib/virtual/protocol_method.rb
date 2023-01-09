module Virtual
  module ProtocolMethod
    class Error < RuntimeError
      def initialize(message)
        super("Pure virtual (abstract) protocol method #{message} must be implemented")
      end
    end

    def self.define(target_class, method_name)
      method_defined = target_class.method_defined?(method_name, true) ||
        target_class.private_method_defined?(method_name, true)

      if not method_defined
        target_class.send(:define_method, method_name) do |*args|
          raise Error, "\"#{method_name}\" of #{self.class.name}"
        end
      end
    end
  end
end
