module Virtual
  module Macro
    def virtual_macro(method_name)
      Virtual::Method.define self, method_name
    end
    alias :virtual :virtual_macro

    def pure_macro(method_name)
      Virtual::PureMethod.define self, method_name
    end
    alias :pure_virtual :pure_macro
    alias :abstract :pure_macro
  end
end
