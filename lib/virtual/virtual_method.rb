module Virtual
  module VirtualMethod
    Error = Class.new(RuntimeError)

    def self.define(target_class, method_name, &blk)
      blk ||= proc do |*|
      end

      if MethodDefined.(target_class, method_name)
        method_source_location = MethodDefined::SourceLocation.get(target_class, method_name)
        raise Error, "Virtual (abstract) method #{method_name} of #{target_class.name} must not already be implemented (Source Location: #{method_source_location})"
      end

      target_class.send(:define_method, method_name, &blk)
    end
  end
end
