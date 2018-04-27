module Virtual
  module Controls
    module Included
      class Example
        include Virtual
      end

      def self.example
        Example.new
      end
    end
  end
end

