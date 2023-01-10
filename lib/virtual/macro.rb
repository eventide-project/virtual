module Virtual
  module Macro
    def virtual_macro(method_name, strict: nil, &blk)
      Virtual::VirtualMethod.define(self, method_name, strict, &blk)
    end
    alias :virtual :virtual_macro

    def pure_virtual_macro(method_name, strict: nil)
      Virtual::PureMethod.define(self, method_name, strict)
    end
    alias :pure_virtual :pure_virtual_macro
    alias :abstract :pure_virtual_macro

    def protocol_macro(method_name)
      Virtual::ProtocolMethod.define(self, method_name)
    end
    alias :protocol :protocol_macro

    def self.macro_methods
      [
        'virtual',
        'pure_virtual',
        'abstract',
        'protocol'
      ]
    end
  end
end
