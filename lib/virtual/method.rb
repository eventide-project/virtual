module Virtual
  module Method
    def self.define(target_class, method_name, &blk)
      blk ||= proc do |*|
      end

      ## Using inline block would be consistent with other implementations
      target_class.send(:define_method, method_name, &blk)
    end
  end
end
