require_relative './automated_init'

module Fixture
  module PureVirtualMethodCannotBeCalled
    class Example
      extend Virtual

      pure_virtual :some_pure_virtual_method
    end

    def self.example
      Example.new
    end
  end
end

context "Virtual" do
  test "Defines a method" do
    example = Fixture::PureVirtualMethodCannotBeCalled.example

    begin
      example.some_pure_virtual_method
    rescue Virtual::PureMethodError => error
    end

    assert error
  end
end
