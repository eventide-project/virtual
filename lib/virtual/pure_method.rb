module Virtual
  module PureMethod
    class Error < RuntimeError
      def initialize(message)
        super("Pure virtual (abstract) method #{message} must be implemented")
      end
    end

    def self.define(target_class, method_name)
      target_class.send(:define_method, method_name) do |*args|
        raise Error, "\"#{method_name}\" of #{self.class.name}"
      end
    end
  end
end
