require_relative 'spec_init'

module Fixture
  module ImplementedInSubclass
    class Example
      extend Virtual

      pure_virtual :some_pure_virtual_method
    end

    class Implementer < Example
      def some_pure_virtual_method
      end
    end

    def self.example
      Implementer.new
    end
  end
end

describe "Virtual" do
  it "Defines a method" do
    example = Fixture::ImplementedInSubclass.example
    example.some_pure_virtual_method
  end
end
