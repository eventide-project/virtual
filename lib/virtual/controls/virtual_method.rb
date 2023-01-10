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
    end
  end
end

