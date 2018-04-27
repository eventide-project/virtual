module Virtual
  module Controls
    module VirtualMethod
      class Example
        include Virtual

        virtual :some_virtual_method
      end

      def self.example
        Example.new
      end

      module Body
        class Example
          include Virtual

          virtual :some_virtual_method do |*|
            :something
          end
        end

        def self.example
          Example.new
        end
      end
    end
  end
end

