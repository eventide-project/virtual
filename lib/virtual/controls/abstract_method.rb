module Virtual
  module Controls
    module AbstractMethod
      def self.example
        Example.new
      end

      class Example
        include Virtual

        pure_virtual :some_pure_virtual_method
      end
    end
  end
end

