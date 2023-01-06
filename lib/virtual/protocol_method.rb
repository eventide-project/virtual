module Virtual
  module ProtocolMethod
    class Error < RuntimeError
      def initialize(message)
        super("Pure virtual (abstract) protocol method #{message} must be implemented")
      end
    end

    def self.define(target_class, method_name)
      already_defined = target_class.instance_methods(true).include?(method_name)

      if not already_defined
        target_class.send :define_method, method_name do |*args|
          raise Error, "\"#{method_name}\" of #{self.class.name}"
        end
      end
    end
  end
end
