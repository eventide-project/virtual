module Virtual
  module MethodDefined
    def self.call(target_class, method_name)
      target_class.method_defined?(method_name, true) ||
        target_class.private_method_defined?(method_name, true)
    end

    module SourceLocation
      def self.get(target_class, method_name)
        method = target_class.instance_method(method_name)
        method.source_location.join(':')
      end
    end
  end
end
