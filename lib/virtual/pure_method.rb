module Virtual
  module PureMethod
    Error = Class.new(RuntimeError)

    def self.define(target_class, method_name)
      if MethodDefined.(target_class, method_name)
        method_source_location = MethodDefined::SourceLocation.get(target_class, method_name)
        raise Error, "Pure virtual (abstract) method #{method_name} of #{target_class.name} must not already be implemented (Source Location: #{method_source_location})"
      end

      target_class.send(:define_method, method_name) do |*args|
        raise Error, "Pure virtual (abstract) method #{method_name} of #{self.class.name} must be implemented"
      end
    end
  end
end
