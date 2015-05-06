module Virtual
  module Macro
    def virtual_macro(method_name)
      Virtual::Method.define self, method_name
    end
    alias :virtual :virtual_macro

    def pure__macro(method_name)
      Virtual::PureMethod.define self, method_name
    end
    alias :pure_virtual :pure__macro
    alias :abstract :pure__macro
  end
end
