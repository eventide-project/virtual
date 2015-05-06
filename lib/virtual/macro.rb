module Virtual
  module Macro
    def virtual_macro(method_name, *args)
      Virtual::Method.define self, method_name, *args
    end
    alias :virtual :virtual_macro
  end
end
