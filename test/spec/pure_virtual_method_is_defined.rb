require_relative 'spec_init'

module Fixture
  module PureVirtualMethodIsDefined
    class Example
      extend Virtual

      pure_virtual :some_abstract_method
    end

    def self.example
      Example.new
    end
  end
end

context "Virtual" do
  test "Defines a method" do
    example = Fixture::PureVirtualMethodIsDefined.example
    example.respond_to? :some_abstract_method
  end
end
