module Virtual
  module Controls
    module PureVirtualMethod
      def self.example
        Example.new
      end

      class Example
        include Virtual

        pure_virtual :some_pure_virtual_method
      end

      module Implemented
        def self.example
          Implementer.new
        end

        class Implementer < Example
          def some_pure_virtual_method
          end
        end
      end
    end
  end
end

