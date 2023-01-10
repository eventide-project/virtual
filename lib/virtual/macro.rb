module Virtual
  module Macro
    def virtual_macro(method_name, &blk)
      Virtual::VirtualMethod.define(self, method_name, &blk)
    end
    alias :virtual :virtual_macro

    def pure_macro(method_name)
      Virtual::PureMethod.define(self, method_name)
    end
    alias :pure_virtual :pure_macro
    alias :abstract :pure_macro

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
