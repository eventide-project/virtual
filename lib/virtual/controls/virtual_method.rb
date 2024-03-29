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

      module Override
        def self.example
          Class.new do
            include Virtual

            def some_virtual_method
            end

            virtual :some_virtual_method
          end
        end
      end
    end
  end
end

