module Virtual
  module Controls
    module ProtocolMethod
      def self.example
        Example.new
      end

      class Example
        include Virtual

        protocol :some_protocol_method
      end

      module Implemented
        def self.example
          Implementer.new
        end

        class Implementer < Example
          def some_protocol_method
          end
        end
      end

      module Override
        def self.example
          Class.new do
            include Virtual

            def some_protocol_method
            end

            protocol :some_protocol_method
          end
        end
      end
    end
  end
end

