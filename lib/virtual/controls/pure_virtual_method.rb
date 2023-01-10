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

      module StrictOverride
        def self.example(strict:)
          Class.new do
            include Virtual

            def some_pure_virtual_method
            end

            pure_virtual :some_pure_virtual_method, strict: strict
          end
        end
      end
    end
  end
end

