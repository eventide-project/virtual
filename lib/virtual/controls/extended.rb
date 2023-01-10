module Virtual
  module Controls
    module Extended
      def self.example
        Example.new
      end

      class Example
        extend Virtual
      end
    end
  end
end

