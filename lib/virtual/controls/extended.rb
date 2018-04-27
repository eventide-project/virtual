module Virtual
  module Controls
    module Extended
      class Example
        extend Virtual
      end

      def self.example
        Example.new
      end
    end
  end
end

