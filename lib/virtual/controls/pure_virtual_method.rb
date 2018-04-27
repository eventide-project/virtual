module Virtual
  module Controls
    module PureVirtualMethod
      class Example
        include Virtual

        pure_virtual :some_pure_virtual_method
      end

      def self.example
        Example.new
      end

      module Implemented
        class Implementer < Example
          def some_pure_virtual_method
          end
        end

        def self.example
          Implementer.new
        end
      end
    end
  end
end

