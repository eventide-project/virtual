module Virtual
  module Controls
    module Included
      def self.example
        Example.new
      end

      class Example
        include Virtual
      end
    end
  end
end

