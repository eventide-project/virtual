module Virtual
  module Macro
    def virtual_macro(method_name)
      Virtual::Method.define self, method_name
    end
    alias :virtual :virtual_macro
  end
end
