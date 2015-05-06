module Virtual
  module Method
    def self.define(target_class, method_name)
      target_class.send :define_method, method_name do |*args|
      end
    end
  end
end
