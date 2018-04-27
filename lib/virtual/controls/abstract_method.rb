module Virtual
  module Controls
    module AbstractMethod
      class Example
        include Virtual

        pure_virtual :some_pure_virtual_method
      end

      def self.example
        Example.new
      end
    end
  end
end

