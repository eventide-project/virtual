module Virtual
  module Controls
    module VirtualMethod
      def self.example
        Example.new
      end

      class Example
        include Virtual

        virtual :some_virtual_method
      end

      module Body
        def self.example
          Example.new
        end

        class Example
          include Virtual

          virtual :some_virtual_method do |*|
            :something
          end
        end
      end

      module StrictOverride
        def self.example(strict:)
          Class.new do
            include Virtual

            def some_virtual_method
            end

            virtual :some_virtual_method, strict: strict
          end
        end
      end
    end
  end
end

