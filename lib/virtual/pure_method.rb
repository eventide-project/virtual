module Virtual
  class PureMethodError < RuntimeError
    def initialize(message)
      super("Pure virtual (abstract) method #{message} must be implemented")
    end
  end

  module PureMethod
    def self.define(target_class, method_name)
      target_class.send :define_method, method_name do |*args|
        raise PureMethodError, "\"#{method_name}\" of #{target_class.name}"
      end
    end
  end
end
